 /* slider.h – grafinė „centų“ (± 50 ct) nuokrypio juosta 128 × 32 SSD1306 OLED ekranui
 *
 *   Juostos kontūras: 120 px pločio, 3 px aukščio.
 *   Viduryje – fiksuota „0 ct“ skalės žyma (vienas vertikalus stulpelis).
 *   Žymeklis (kursorius): 5 × 5 px stačiakampis, kurio X padėtis atitinka
 *   stygos nuokrypį centais (–50 ct … +50 ct).  */
#ifndef SLIDER_H
#define SLIDER_H

/* –– Priklausomybės –– */
#include "ssd1306.h"    /* ekrano HAL – turi DrawPixel(), UpdateScreen() ir t.t. */
#include <stdint.h>
#include <math.h>

/* Geometrijos konstantos */
#define BAR_X         4      /* kairysis juostos kontūro x               */
#define BAR_W       120      /* bendras kontūro plotis                   */
#define BAR_Y        28      /* viršutinė kontūro linija (eilutė)        */
#define BAR_INNER_H   3      /* vidinės dalies aukštis (be kontūro linijų)*/

#define CURSOR_HALF_W 2      /* pusė kursoriaus pločio, bendras = 5 px  */
#define CURSOR_UP     2      /* kelios eilutės, kiek centrinė žyma ir
                                kursorius pakelti virš kontūro            */

/* pagalbinė funkcija, reikšmės apribojimas */
static inline float clampf(float v, float lo, float hi)
{
    return v < lo ? lo : (v > hi ? hi : v);
}

/*  cents_to_x() paskirtis : paversti ±50 centų reikšmę į x koordinatę pikselių erdvėje.
 *               Kursorius gali judėti tik kontūro viduje (nenulipdamas
 *               ant rėmelio linijų).
 * ------------------------------------------------------------------------- */
static inline uint8_t cents_to_x(float cents)
{
    cents = clampf(cents, -50.f, 50.f);

    /* plotis, kuriame realiai judame = BAR_W-2 (praleidžiame abi vertikalias rėmo linijas) */
    return BAR_X + 1 +
           (uint8_t)((cents + 50.f) * (BAR_W - 2) / 100.f + 0.5f); /* +0.5 ir apvaliname */
}

/* draw_slider() paskirtis : nupiešti visą juostą ekrane – kontūrą, centrinę žymę ir
 *               kursorių pagal pateiktą centų nuokrypį.
 *
 * cents  – nuokrypis [-50; 50]. Reikšmė už ribų yra
 *          apribojama, kad grafika nelūžtų.
 *
 *  Pastabos :
 *    – Funkcija *tik* braižo, nes ekrano atnaujinimas vykdomas
 *      su (`ssd1306_UpdateScreen()`) taip galima grupuoti piešimo operacijas.
 *    – SSD1306 aukštis = 32 px; visos „if (y < 32)“ patikros apsaugo nuo
 *      potencialaus išėjimo iš rėžių, jei keistųsi geometriją kitam OLED modeliui.
 * ------------------------------------------------------------------------- */
static inline void draw_slider(float cents)
{
    /* Kontūro piešimas (viršutinė, apatinė, kairė, dešinė linijos) */
    for (uint8_t x = BAR_X; x < BAR_X + BAR_W; ++x) {
        if (BAR_Y < 32)                    ssd1306_DrawPixel(x, BAR_Y,                 White);
        if (BAR_Y + BAR_INNER_H + 1 < 32)  ssd1306_DrawPixel(x, BAR_Y + BAR_INNER_H + 1, White);
    }
    for (uint8_t y = BAR_Y; y <= BAR_Y + BAR_INNER_H + 1 && y < 32; ++y) {
        ssd1306_DrawPixel(BAR_X,            y, White);
        ssd1306_DrawPixel(BAR_X + BAR_W - 1, y, White);
    }

    /* Centrinė nulinė žyma (0 ct) */
    uint8_t cx = BAR_X + BAR_W / 2;        /* X = juostos centras           */
    int16_t tick_top = (int16_t)BAR_Y - CURSOR_UP;
    for (int16_t y = tick_top; y <= (int16_t)BAR_Y + BAR_INNER_H + 1; ++y) {
        if (y >= 0 && y < 32) ssd1306_DrawPixel(cx, (uint8_t)y, White);
    }

    /* Kursorius – 5 px pločio × 5 px aukščio stačiakampis */
    uint8_t px = cents_to_x(cents);        /* X padėtis pagal nuokrypį      */
    for (int8_t dx = -CURSOR_HALF_W; dx <= CURSOR_HALF_W; ++dx) {
        int16_t x = (int16_t)px + dx;
        /* Sauga: kursorius turi likti juostos viduje (be kontūro) */
        if (x < BAR_X + 1 || x > BAR_X + BAR_W - 2) continue;

        for (int16_t y = (int16_t)BAR_Y - CURSOR_UP;
             y <= (int16_t)BAR_Y + BAR_INNER_H; ++y)
        {
            if (y >= 0 && y < 32) ssd1306_DrawPixel((uint8_t)x, (uint8_t)y, White);
        }
    }
}
#endif /* SLIDER_H */
