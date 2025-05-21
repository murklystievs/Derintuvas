################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS_DSP/Source/CommonTables/CommonTables.c \
../Drivers/CMSIS_DSP/Source/CommonTables/arm_common_tables.c \
../Drivers/CMSIS_DSP/Source/CommonTables/arm_const_structs.c 

OBJS += \
./Drivers/CMSIS_DSP/Source/CommonTables/CommonTables.o \
./Drivers/CMSIS_DSP/Source/CommonTables/arm_common_tables.o \
./Drivers/CMSIS_DSP/Source/CommonTables/arm_const_structs.o 

C_DEPS += \
./Drivers/CMSIS_DSP/Source/CommonTables/CommonTables.d \
./Drivers/CMSIS_DSP/Source/CommonTables/arm_common_tables.d \
./Drivers/CMSIS_DSP/Source/CommonTables/arm_const_structs.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS_DSP/Source/CommonTables/%.o Drivers/CMSIS_DSP/Source/CommonTables/%.su Drivers/CMSIS_DSP/Source/CommonTables/%.cyclo: ../Drivers/CMSIS_DSP/Source/CommonTables/%.c Drivers/CMSIS_DSP/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32WB55xx -c -I../Core/Inc -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/CMSIS_DSP/Include" -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/OLED" -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../Utilities/lpm/tiny_lpm -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Middlewares/ST/STM32_WPAN/ble -I../Utilities/sequencer -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-CommonTables

clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-CommonTables:
	-$(RM) ./Drivers/CMSIS_DSP/Source/CommonTables/CommonTables.cyclo ./Drivers/CMSIS_DSP/Source/CommonTables/CommonTables.d ./Drivers/CMSIS_DSP/Source/CommonTables/CommonTables.o ./Drivers/CMSIS_DSP/Source/CommonTables/CommonTables.su ./Drivers/CMSIS_DSP/Source/CommonTables/arm_common_tables.cyclo ./Drivers/CMSIS_DSP/Source/CommonTables/arm_common_tables.d ./Drivers/CMSIS_DSP/Source/CommonTables/arm_common_tables.o ./Drivers/CMSIS_DSP/Source/CommonTables/arm_common_tables.su ./Drivers/CMSIS_DSP/Source/CommonTables/arm_const_structs.cyclo ./Drivers/CMSIS_DSP/Source/CommonTables/arm_const_structs.d ./Drivers/CMSIS_DSP/Source/CommonTables/arm_const_structs.o ./Drivers/CMSIS_DSP/Source/CommonTables/arm_const_structs.su

.PHONY: clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-CommonTables

