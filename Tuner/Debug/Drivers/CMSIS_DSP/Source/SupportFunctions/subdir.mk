################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS_DSP/Source/SupportFunctions/SupportFunctions.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.c 

OBJS += \
./Drivers/CMSIS_DSP/Source/SupportFunctions/SupportFunctions.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.o 

C_DEPS += \
./Drivers/CMSIS_DSP/Source/SupportFunctions/SupportFunctions.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS_DSP/Source/SupportFunctions/%.o Drivers/CMSIS_DSP/Source/SupportFunctions/%.su Drivers/CMSIS_DSP/Source/SupportFunctions/%.cyclo: ../Drivers/CMSIS_DSP/Source/SupportFunctions/%.c Drivers/CMSIS_DSP/Source/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32WB55xx -c -I../Core/Inc -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/CMSIS_DSP/Include" -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/OLED" -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../Utilities/lpm/tiny_lpm -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Utilities/sequencer -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-SupportFunctions

clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-SupportFunctions:
	-$(RM) ./Drivers/CMSIS_DSP/Source/SupportFunctions/SupportFunctions.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/SupportFunctions.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/SupportFunctions.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/SupportFunctions.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.cyclo ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.su

.PHONY: clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-SupportFunctions

