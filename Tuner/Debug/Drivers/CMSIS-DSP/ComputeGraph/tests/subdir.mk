################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS-DSP/ComputeGraph/tests/timing.c 

OBJS += \
./Drivers/CMSIS-DSP/ComputeGraph/tests/timing.o 

C_DEPS += \
./Drivers/CMSIS-DSP/ComputeGraph/tests/timing.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS-DSP/ComputeGraph/tests/%.o Drivers/CMSIS-DSP/ComputeGraph/tests/%.su Drivers/CMSIS-DSP/ComputeGraph/tests/%.cyclo: ../Drivers/CMSIS-DSP/ComputeGraph/tests/%.c Drivers/CMSIS-DSP/ComputeGraph/tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32WB55xx -c -I../Core/Inc -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/CMSIS-DSP" -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/OLED" -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2d-DSP-2f-ComputeGraph-2f-tests

clean-Drivers-2f-CMSIS-2d-DSP-2f-ComputeGraph-2f-tests:
	-$(RM) ./Drivers/CMSIS-DSP/ComputeGraph/tests/timing.cyclo ./Drivers/CMSIS-DSP/ComputeGraph/tests/timing.d ./Drivers/CMSIS-DSP/ComputeGraph/tests/timing.o ./Drivers/CMSIS-DSP/ComputeGraph/tests/timing.su

.PHONY: clean-Drivers-2f-CMSIS-2d-DSP-2f-ComputeGraph-2f-tests

