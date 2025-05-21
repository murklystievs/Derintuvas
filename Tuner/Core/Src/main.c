/* USER CODE BEGIN Header */
/* gitaros derintuvas */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "ssd1306.h"
#include "ssd1306_fonts.h"
#include <stdio.h>
#include <math.h>
#include "arm_math.h"

#include "ble_types.h"
#include "app_ble.h"
#include "custom_stm.h"
#include <stdbool.h>
#include "slider.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define ADC_BUF_LEN 2048  // buferio dydis
#define MIN_FREQ_HZ 70
#define MAX_FREQ_HZ 2000
#define ADC_VREF 3.3f
#define ADC_RESOLUTION 4096.0f
#define STABILITY_THRESHOLD 3.0f  /* (Hz)
								 * ------------------------------------------------------------------------
								 *  Maksimalus leistinas standartinis nuokrypis tarp paskutinių
								 *  AVG_FRAMES matavimų. Jeigu nuokrypis neviršija slenksčio STABILITY_THRESHOLD,
								 *  laikome, kad styga stabilizavosi ir dažnis yra patikimas.
								 *
								 *  Rekomenduojamos ribos:
								 *    1–2 Hz  – labai griežta, gali vėluoti natos rodymas
								 *    3 Hz    – gera pusiausvyra
								 *    4–6 Hz  – greitesnė reakcija, bet galima daugiau nepatikimumo
								 *-------------------------------------------------------------------------*/
#define AVG_FRAMES 1			/*  Kiek paskutinių dažnio matavimų (FFT langų) laikyti žiediniame buferyje
								 *  ir naudoti stabilumo analizei:
								 *
								 *    1  – jokio vidurkinimo („real-time“ reakcija, bet gali „šokinėti“)
								 *   >1  – įjungiamas „debounce“:
								 *           skaičiuojamas vidurkis per N kadrų
								 *           jei standartinis nuokrypis σ < STABILITY_THRESHOLD, nata laikoma STABILI ir rodoma.
								 *
								 *  Rekomenduojamos ribos:
								 *    1    labai greitas atsakas, minimalus vėlinimas
								 *    2–3  švelnus išlyginimas
								 *    4+   itin stabilu, bet padidėja vėlinimas į ekraną / BLE
								 *-------------------------------------------------------------------------*/

float freq_buffer[AVG_FRAMES] = {0};
uint8_t freq_index = 0;
uint32_t min_bin, max_bin;

#define LED_ON_DUTY  400     /* 40 % */
#define LED_OFF_DUTY   0

volatile uint8_t new_data_ready = 0;

uint16_t adc_buf[ADC_BUF_LEN];
float32_t fft_input[ADC_BUF_LEN];
float32_t fft_output[ADC_BUF_LEN];
float32_t magnitudes[ADC_BUF_LEN / 2];
char buffer[32];
float sample_rate;

static float ref_note_freq = 0.0f;   /* artimiausios natos */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;
DMA_HandleTypeDef hdma_adc1;

I2C_HandleTypeDef hi2c1;

IPCC_HandleTypeDef hipcc;

RTC_HandleTypeDef hrtc;

TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim17;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void PeriphCommonClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_I2C1_Init(void);
static void MX_ADC1_Init(void);
static void MX_IPCC_Init(void);
static void MX_RTC_Init(void);
static void MX_TIM2_Init(void);
static void MX_TIM17_Init(void);
static void MX_RF_Init(void);
/* USER CODE BEGIN PFP */
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc) {
    new_data_ready = 1;
}

static void Display_Debug_Info(const char* note, float freq) {
    ssd1306_Fill(Black);

    //dažnio informacija
    snprintf(buffer, sizeof(buffer), "%s ", note);
    ssd1306_SetCursor(0, 0);
    ssd1306_WriteString(buffer, Font_16x26, White);

	snprintf(buffer, sizeof(buffer), "%3.0fHz", freq);
	ssd1306_SetCursor(70, 0);
	ssd1306_WriteString(buffer, Font_11x18, White);

//    ssd1306_UpdateScreen();
}

typedef struct {
    const char* name;
    float freq;
} Note;

Note notes[] = {
    // 2 oktava
    {"C2", 65.41}, {"C#2", 69.30}, {"D2", 73.42}, {"D#2", 77.78},
    {"E2", 82.41}, {"F2", 87.31}, {"F#2", 92.50}, {"G2", 98.00},
    {"G#2", 103.83}, {"A2", 110.00}, {"A#2", 116.54}, {"B2", 123.47},

    // 3 oktava
    {"C3", 130.81}, {"C#3", 138.59}, {"D3", 146.83}, {"D#3", 155.56},
    {"E3", 164.81}, {"F3", 174.61}, {"F#3", 185.00}, {"G3", 196.00},
    {"G#3", 207.65}, {"A3", 220.00}, {"A#3", 233.08}, {"B3", 246.94},

    // 4 oktava
    {"C4", 261.63}, {"C#4", 277.18}, {"D4", 293.66}, {"D#4", 311.13},
    {"E4", 329.63}, {"F4", 349.23}, {"F#4", 369.99}, {"G4", 392.00},
    {"G#4", 415.30}, {"A4", 440.00}, {"A#4", 466.16}, {"B4", 493.88},

    // 5 oktava
    {"C5", 523.25}, {"C#5", 554.37}, {"D5", 587.33}, {"D#5", 622.25},
    {"E5", 659.26}, {"F5", 698.46}, {"F#5", 739.99}, {"G5", 783.99},
    {"G#5", 830.61}, {"A5", 880.00}, {"A#5", 932.33}, {"B5", 987.77},

    // 6 oktava
    {"C6", 1046.50}, {"C#6", 1108.73}, {"D6", 1174.66}, {"D#6", 1244.51},
    {"E6", 1318.51}, {"F6", 1396.91}, {"F#6", 1479.98}, {"G6", 1567.98},
    {"G#6", 1661.22}, {"A6", 1760.00}, {"A#6", 1864.66}, {"B6", 1975.53},

    {"C7", 2093.00}, {"C#7", 2217.46}, {"D7", 2349.32}
};

static const char* IdentifyNote(float freq) {
    float minDiff = 1e9f;			/* pradinis „begalinis“ skirtumas */
    const char* closestNote = "-";	/* kol kas nežinome artimiausios natos */
    ref_note_freq = 0.0f;          /* iš naujo nustatyti kiekvieną kartą iškviečiant */

    // rasti artimiausia natą
    for (int i = 0; i < sizeof(notes)/sizeof(notes[0]); i++) {
        float diff = fabsf(freq - notes[i].freq);		/* absoliutus skirtumas */
        if (diff < minDiff) {
            minDiff = diff;						/* atnaujiname minimumą */
            closestNote = notes[i].name;		/* įsimename pavadinimą */
            ref_note_freq = notes[i].freq;    /* įsimename tikslų Hz  */
        }
    }

    // Atmesti, jei skirtumas, paklaida per didelė (>3 % natų dažnio)
    if (minDiff > 0.03f * freq) {
        return "-";
    }

    return closestNote;
}
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();
  /* Config code for STM32_WPAN (HSE Tuning must be done before system clock configuration) */
  MX_APPE_Config();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* Configure the peripherals common clocks */
  PeriphCommonClock_Config();

  /* IPCC initialisation */
  MX_IPCC_Init();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_I2C1_Init();
  MX_ADC1_Init();
  MX_RTC_Init();
  MX_TIM2_Init();
  MX_TIM17_Init();
  MX_RF_Init();
  /* USER CODE BEGIN 2 */
  HAL_TIM_PWM_Start(&htim17, TIM_CHANNEL_1);     /* PA7 LED */

  HAL_ADCEx_Calibration_Start(&hadc1, ADC_SINGLE_ENDED);
  sample_rate = 8000.0f;
  min_bin = (MIN_FREQ_HZ * ADC_BUF_LEN) / (uint32_t)sample_rate;
  max_bin = (MAX_FREQ_HZ * ADC_BUF_LEN) / (uint32_t)sample_rate;
  if (HAL_ADC_Start_DMA(&hadc1, (uint32_t*)adc_buf, ADC_BUF_LEN) != HAL_OK)
  Error_Handler();

  HAL_TIM_Base_Start(&htim2);                 // laikmatis paleidžiamas paskutinis

  ssd1306_Init();
  HAL_Delay(100);
  ssd1306_Fill(Black);
  ssd1306_SetCursor(0, 0);
  ssd1306_WriteString("Gitaros", Font_16x15, White);
  ssd1306_SetCursor(0, 15);
  ssd1306_WriteString("derintuvas", Font_16x15, White);
  ssd1306_UpdateScreen();

  arm_rfft_fast_instance_f32 fft;
  arm_rfft_fast_init_f32(&fft, ADC_BUF_LEN);
  /* USER CODE END 2 */

  /* Init code for STM32_WPAN */
  MX_APPE_Init();

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  HAL_Delay(3000);
  float mean_adc, freq, min_adc, max_adc;
  float avg_freq = 0.0f;
  uint32_t maxBin;
  uint32_t last_update = 0;
  const char* note;
  while (1)
  {
    /* USER CODE END WHILE */
    MX_APPE_Process();

    /* USER CODE BEGIN 3 */
    if (new_data_ready) {
			// ADC duomenų apskaičiavimas
			mean_adc = 0.0f;
			min_adc = 4096.0f;
			max_adc = 0.0f;
			for (int i = 0; i < ADC_BUF_LEN; i++) {
				mean_adc += adc_buf[i];
				if (adc_buf[i] < min_adc) min_adc = adc_buf[i];
				if (adc_buf[i] > max_adc) max_adc = adc_buf[i];
			}
			mean_adc /= ADC_BUF_LEN;

			// DC pašalinimas + Blackman-Harris langas
			for (int i = 0; i < ADC_BUF_LEN; i++) {
				float window = 0.35875f -
							   0.48829f * cosf(2 * M_PI * i / (ADC_BUF_LEN - 1)) +
							   0.14128f * cosf(4 * M_PI * i / (ADC_BUF_LEN - 1)) -
							   0.01168f * cosf(6 * M_PI * i / (ADC_BUF_LEN - 1));
				fft_input[i] = ((float)adc_buf[i] - mean_adc) * window;
			}

			// FFT transformacija ir amplitudžių apskaičiavimas
			arm_rfft_fast_f32(&fft, fft_input, fft_output, 0);
			arm_cmplx_mag_f32(fft_output, magnitudes, ADC_BUF_LEN / 2);

			// Scale magnitudes
			float norm = 2.0f / (float)ADC_BUF_LEN;
			arm_scale_f32(magnitudes, norm, magnitudes, ADC_BUF_LEN / 2);

			// Triukšmo žemutinė riba
			float noise_floor = 0.0f;
			for (uint32_t i = 0; i < ADC_BUF_LEN / 2; i++) {
				noise_floor += magnitudes[i];
			}
			noise_floor /= (ADC_BUF_LEN / 2);

			// Nustatomas slenkstis
			float threshold = 20.0f * noise_floor;

			// Rasti pirmą imtį virš slenksčio
			uint32_t i = min_bin;
			while (i <= max_bin && magnitudes[i] <= threshold) {
				i++;
			}

			if (i > max_bin || (max_adc - min_adc) <= 5) {
				freq = 0.0f;
				note = "-";
			} else {
				// Rasti vietinį maksimumą aplink i
				uint32_t start = (i > 2) ? i - 2 : min_bin;
				uint32_t end = (i + 2 < ADC_BUF_LEN / 2) ? i + 2 : max_bin;
				uint32_t local_max_bin = start;
				float local_max_mag = magnitudes[start];

				for (uint32_t j = start + 1; j <= end; j++) {
					if (magnitudes[j] > local_max_mag) {
						local_max_mag = magnitudes[j];
						local_max_bin = j;
					}
				}
				maxBin = local_max_bin;

				// Kvadratinė interpoliacija dažnio tikslinimui
				if (maxBin > 0 && maxBin < ADC_BUF_LEN / 2 - 1) {
					float y1 = magnitudes[maxBin - 1];
					float y2 = magnitudes[maxBin];
					float y3 = magnitudes[maxBin + 1];
					float delta = 0.5f * (y3 - y1) / (2.0f * y2 - y1 - y3);
					float fractionalBin = maxBin + delta;
					freq = fractionalBin * sample_rate / ADC_BUF_LEN;
				} else {
					freq = maxBin * sample_rate / ADC_BUF_LEN;
				}

				note = IdentifyNote(freq);
			}

			// Laikyti dažnį buferyje ir patikrinti stabilumą
			if (freq > 0) {                       /* Tik jeigu aptiktas dažnis yra > 0 Hz  */
			    /* Įdedame naujausią matavimą į žiedinį buferį */
			    freq_buffer[freq_index] = freq;   /* įrašome dažnį į einamą poziciją       */
			    freq_index = (freq_index + 1) % AVG_FRAMES;     /* žiedo rodyklė pirmyn   */

			    /* Suskaičiuojame vidurkį ir standartinį nuokrypį buferyje */
			    float sum = 0.0f;
			    int   valid_count = 0;
			    for (int k = 0; k < AVG_FRAMES; k++) {
			        if (freq_buffer[k] > 0) {     /* ignoruojame tuščias (0 Hz) vietas     */
			            sum += freq_buffer[k];
			            valid_count++;
			        }
			    }

			    if (valid_count == AVG_FRAMES) {  /* buferis pilnas, galima vertinti      */
			        float mean_freq = sum / AVG_FRAMES;

			        /* standartinio nuokrypio formulė */
			        float sum_sq_diff = 0.0f;
			        for (int k = 0; k < AVG_FRAMES; k++) {
			            float diff = freq_buffer[k] - mean_freq;
			            sum_sq_diff += diff * diff;
			        }
			        float std_dev = sqrtf(sum_sq_diff / AVG_FRAMES);

			        /* 3) Patikriname, ar dažnis pakankamai stabilus */
			        if (std_dev < STABILITY_THRESHOLD) {
			            avg_freq = mean_freq;             /* išlyginame („debounce“)       */
			            note     = IdentifyNote(avg_freq);/* nustatome artimiausią natą    */
			        } else {
			            note     = "-";                   /* per dideli svyravimai         */
			            avg_freq = 0.0f;
			        }
			    } else {                          /* buferis dar neužsipildė: laukiame     */
			        note     = "-";
			        avg_freq = 0.0f;
			    }

			} else {                              /* signalas nerastas         */
			    note     = "-";
			    avg_freq = 0.0f;
			}

			// BLE atnaujinimas
			if (APP_BLE_Get_Server_Connection_Status() == APP_BLE_CONNECTED_SERVER) {
				char msg[8] = {0};
				if (avg_freq > 0) {
					snprintf(msg, sizeof(msg), "%5.1f", avg_freq);
				} else {
					snprintf(msg, sizeof(msg), "     ");
				}
				for (size_t i = strlen(msg); i < sizeof(msg); ++i) msg[i] = ' ';
				Custom_STM_App_Update_Char(CUSTOM_STM_CHARCAST, (uint8_t*)msg);
			}

			// Ekrano atnaujinimas
			Display_Debug_Info(note, avg_freq);
			float cents = 0.0f;
			if (avg_freq > 0.5f && ref_note_freq > 0.0f) {
				#ifndef log2f
				#define log2f(x) (logf(x) * 1.442695041f)
				#endif
				cents = 1200.0f * log2f(avg_freq / ref_note_freq);
			}
			draw_slider(cents);
			ssd1306_UpdateScreen();

			new_data_ready = 0;
			last_update = HAL_GetTick();
		}



    static uint32_t             led_last    = 0;     /* paskutine busena   */
    static uint8_t              led_on      = 0;     /* 0 = OFF, 1 = ON      */
    static uint8_t              pulse_count = 0;
    const uint32_t now = HAL_GetTick();

    const uint32_t ON_MS     = 100;   /* ijungto LED laikas ms                       */
    const uint32_t GAP_IDLE  = 4000;  /* tarpas po vieno mirktelejimo (idle)     */
    const uint32_t GAP_TRAIN = 100;   /* tarpas tarp trigubų impulsų       */

    APP_BLE_ConnStatus_t conn = APP_BLE_Get_Server_Connection_Status();
    bool connected = (conn == APP_BLE_CONNECTED_SERVER ||
                      conn == APP_BLE_CONNECTED_CLIENT);

    /* -------- būsenos mašina ------------------------------------------- */
    if (led_on) {                                          /* LEDas ON  */
        if (now - led_last >= ON_MS) {
        	__HAL_TIM_SET_COMPARE(&htim17, TIM_CHANNEL_1, LED_OFF_DUTY);
            led_on   = 0;
            led_last = now;
            pulse_count++;                                 /* vienas pulsas atliktas    */
        }
    } else {                                               /* LEDas OFF */
        uint32_t gap = connected
                       ? (pulse_count < 3 ? GAP_TRAIN : GAP_IDLE)
                       : GAP_IDLE;
        if (now - led_last >= gap) {
        	__HAL_TIM_SET_COMPARE(&htim17, TIM_CHANNEL_1, LED_ON_DUTY);
            led_on   = 1;
            led_last = now;
            if (!connected || pulse_count >= 3)            /* restartuoti seka */
                pulse_count = 0;
        }
    }

	if (HAL_GetTick() - last_update >= 50) {
		last_update = HAL_GetTick();
	}
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_LSI1
                              |RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV2;
  RCC_OscInitStruct.PLL.PLLN = 8;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure the SYSCLKSource, HCLK, PCLK1 and PCLK2 clocks dividers
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK4|RCC_CLOCKTYPE_HCLK2
                              |RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.AHBCLK2Divider = RCC_SYSCLK_DIV2;
  RCC_ClkInitStruct.AHBCLK4Divider = RCC_SYSCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief Peripherals Common Clock Configuration
  * @retval None
  */
void PeriphCommonClock_Config(void)
{
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Initializes the peripherals clock
  */
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_SMPS|RCC_PERIPHCLK_RFWAKEUP;
  PeriphClkInitStruct.RFWakeUpClockSelection = RCC_RFWKPCLKSOURCE_HSE_DIV1024;
  PeriphClkInitStruct.SmpsClockSelection = RCC_SMPSCLKSOURCE_HSI;
  PeriphClkInitStruct.SmpsDivSelection = RCC_SMPSCLKDIV_RANGE1;

  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN Smps */

  /* USER CODE END Smps */
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */

  /** Common config
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV2;
  hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.ScanConvMode = ADC_SCAN_DISABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc1.Init.LowPowerAutoWait = DISABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.NbrOfConversion = 1;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConv = ADC_EXTERNALTRIG_T2_TRGO;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_RISING;
  hadc1.Init.DMAContinuousRequests = ENABLE;
  hadc1.Init.Overrun = ADC_OVR_DATA_PRESERVED;
  hadc1.Init.OversamplingMode = DISABLE;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_5;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_47CYCLES_5;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.Timing = 0x10B17DB5;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Analogue filter
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c1, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Digital filter
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c1, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief IPCC Initialization Function
  * @param None
  * @retval None
  */
static void MX_IPCC_Init(void)
{

  /* USER CODE BEGIN IPCC_Init 0 */

  /* USER CODE END IPCC_Init 0 */

  /* USER CODE BEGIN IPCC_Init 1 */

  /* USER CODE END IPCC_Init 1 */
  hipcc.Instance = IPCC;
  if (HAL_IPCC_Init(&hipcc) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN IPCC_Init 2 */

  /* USER CODE END IPCC_Init 2 */

}

/**
  * @brief RF Initialization Function
  * @param None
  * @retval None
  */
static void MX_RF_Init(void)
{

  /* USER CODE BEGIN RF_Init 0 */

  /* USER CODE END RF_Init 0 */

  /* USER CODE BEGIN RF_Init 1 */

  /* USER CODE END RF_Init 1 */
  /* USER CODE BEGIN RF_Init 2 */

  /* USER CODE END RF_Init 2 */

}

/**
  * @brief RTC Initialization Function
  * @param None
  * @retval None
  */
static void MX_RTC_Init(void)
{

  /* USER CODE BEGIN RTC_Init 0 */

  /* USER CODE END RTC_Init 0 */

  /* USER CODE BEGIN RTC_Init 1 */

  /* USER CODE END RTC_Init 1 */

  /** Initialize RTC Only
  */
  hrtc.Instance = RTC;
  hrtc.Init.HourFormat = RTC_HOURFORMAT_24;
  hrtc.Init.AsynchPrediv = CFG_RTC_ASYNCH_PRESCALER;
  hrtc.Init.SynchPrediv = CFG_RTC_SYNCH_PRESCALER;
  hrtc.Init.OutPut = RTC_OUTPUT_DISABLE;
  hrtc.Init.OutPutPolarity = RTC_OUTPUT_POLARITY_HIGH;
  hrtc.Init.OutPutType = RTC_OUTPUT_TYPE_OPENDRAIN;
  hrtc.Init.OutPutRemap = RTC_OUTPUT_REMAP_NONE;
  if (HAL_RTC_Init(&hrtc) != HAL_OK)
  {
    Error_Handler();
  }

  /** Enable the WakeUp
  */
  if (HAL_RTCEx_SetWakeUpTimer_IT(&hrtc, 0, RTC_WAKEUPCLOCK_RTCCLK_DIV16) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN RTC_Init 2 */

  /* USER CODE END RTC_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 79;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 99;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_UPDATE;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

/**
  * @brief TIM17 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM17_Init(void)
{

  /* USER CODE BEGIN TIM17_Init 0 */

  /* USER CODE END TIM17_Init 0 */

  TIM_OC_InitTypeDef sConfigOC = {0};
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig = {0};

  /* USER CODE BEGIN TIM17_Init 1 */

  /* USER CODE END TIM17_Init 1 */
  htim17.Instance = TIM17;
  htim17.Init.Prescaler = 63;
  htim17.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim17.Init.Period = 1000;
  htim17.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim17.Init.RepetitionCounter = 0;
  htim17.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim17) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim17) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCNPolarity = TIM_OCNPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_PWM_ConfigChannel(&htim17, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.BreakFilter = 0;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim17, &sBreakDeadTimeConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM17_Init 2 */

  /* USER CODE END TIM17_Init 2 */
  HAL_TIM_MspPostInit(&htim17);

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMAMUX1_CLK_ENABLE();
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  /* USER CODE BEGIN MX_GPIO_Init_1 */

  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /* USER CODE BEGIN MX_GPIO_Init_2 */

  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM1 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM1)
  {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
