################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/startup_ARMCM3.s 

C_SRCS += \
../Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/system_ARMCM3.c 

OBJS += \
./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/startup_ARMCM3.o \
./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/system_ARMCM3.o 

S_DEPS += \
./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/startup_ARMCM3.d 

C_DEPS += \
./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/system_ARMCM3.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/%.o: ../Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/%.s Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/%.o Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/%.su Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/%.cyclo: ../Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/%.c Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32WB55xx -c -I../Core/Inc -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/OLED" -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../Utilities/lpm/tiny_lpm -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Utilities/sequencer -I../Middlewares/ST/STM32_WPAN/ble -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-NN-2f-Examples-2f-ARM-2f-arm_nn_examples-2f-gru-2f-RTE-2f-Device-2f-ARMCM3

clean-Drivers-2f-CMSIS-2f-NN-2f-Examples-2f-ARM-2f-arm_nn_examples-2f-gru-2f-RTE-2f-Device-2f-ARMCM3:
	-$(RM) ./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/startup_ARMCM3.d ./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/startup_ARMCM3.o ./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/system_ARMCM3.cyclo ./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/system_ARMCM3.d ./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/system_ARMCM3.o ./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/Device/ARMCM3/system_ARMCM3.su

.PHONY: clean-Drivers-2f-CMSIS-2f-NN-2f-Examples-2f-ARM-2f-arm_nn_examples-2f-gru-2f-RTE-2f-Device-2f-ARMCM3

