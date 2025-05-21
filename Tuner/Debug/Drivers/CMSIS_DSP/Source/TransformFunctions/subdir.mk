################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS_DSP/Source/TransformFunctions/TransformFunctions.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.c 

S_UPPER_SRCS += \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.S 

OBJS += \
./Drivers/CMSIS_DSP/Source/TransformFunctions/TransformFunctions.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.o 

S_UPPER_DEPS += \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.d 

C_DEPS += \
./Drivers/CMSIS_DSP/Source/TransformFunctions/TransformFunctions.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS_DSP/Source/TransformFunctions/%.o Drivers/CMSIS_DSP/Source/TransformFunctions/%.su Drivers/CMSIS_DSP/Source/TransformFunctions/%.cyclo: ../Drivers/CMSIS_DSP/Source/TransformFunctions/%.c Drivers/CMSIS_DSP/Source/TransformFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32WB55xx -c -I../Core/Inc -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/CMSIS_DSP/Include" -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/OLED" -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../Utilities/lpm/tiny_lpm -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Utilities/sequencer -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS_DSP/Source/TransformFunctions/%.o: ../Drivers/CMSIS_DSP/Source/TransformFunctions/%.S Drivers/CMSIS_DSP/Source/TransformFunctions/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I../Core/Inc -I../STM32_WPAN/App -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Utilities/lpm/tiny_lpm -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Middlewares/ST/STM32_WPAN/ble -I../Drivers/CMSIS/Include -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-TransformFunctions

clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-TransformFunctions:
	-$(RM) ./Drivers/CMSIS_DSP/Source/TransformFunctions/TransformFunctions.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/TransformFunctions.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/TransformFunctions.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/TransformFunctions.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.o
	-$(RM) ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.cyclo ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.su

.PHONY: clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-TransformFunctions

