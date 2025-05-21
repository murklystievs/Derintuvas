################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c \
../Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c 

OBJS += \
./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o \
./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o 

C_DEPS += \
./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d \
./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/Source/SoftmaxFunctions/%.o Drivers/CMSIS/NN/Source/SoftmaxFunctions/%.su Drivers/CMSIS/NN/Source/SoftmaxFunctions/%.cyclo: ../Drivers/CMSIS/NN/Source/SoftmaxFunctions/%.c Drivers/CMSIS/NN/Source/SoftmaxFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32WB55xx -c -I../Core/Inc -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/OLED" -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -I../STM32_WPAN/App -I../Utilities/lpm/tiny_lpm -I../Middlewares/ST/STM32_WPAN -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../Middlewares/ST/STM32_WPAN/utilities -I../Middlewares/ST/STM32_WPAN/ble/core -I../Middlewares/ST/STM32_WPAN/ble/core/auto -I../Middlewares/ST/STM32_WPAN/ble/core/template -I../Middlewares/ST/STM32_WPAN/ble/svc/Inc -I../Middlewares/ST/STM32_WPAN/ble/svc/Src -I../Utilities/sequencer -I../Middlewares/ST/STM32_WPAN/ble -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-SoftmaxFunctions

clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-SoftmaxFunctions:
	-$(RM) ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.cyclo ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.su ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.cyclo ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.su

.PHONY: clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-SoftmaxFunctions

