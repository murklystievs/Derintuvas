################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/system_stm32wbxx.c 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/system_stm32wbxx.o 

C_DEPS += \
./Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/system_stm32wbxx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/%.o Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/%.su Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/%.cyclo: ../Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/%.c Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32WB55xx -c -I../Core/Inc -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/OLED" -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../Utilities/lpm/tiny_lpm -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Utilities/sequencer -I../Middlewares/ST/STM32_WPAN/ble -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32WBxx-2f-Source-2f-Templates

clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32WBxx-2f-Source-2f-Templates:
	-$(RM) ./Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/system_stm32wbxx.cyclo ./Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/system_stm32wbxx.d ./Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/system_stm32wbxx.o ./Drivers/CMSIS/Device/ST/STM32WBxx/Source/Templates/system_stm32wbxx.su

.PHONY: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32WBxx-2f-Source-2f-Templates

