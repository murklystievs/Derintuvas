################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctions.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c \
../Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c 

OBJS += \
./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctions.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o 

C_DEPS += \
./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctions.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d \
./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS-DSP/Source/SVMFunctions/%.o Drivers/CMSIS-DSP/Source/SVMFunctions/%.su Drivers/CMSIS-DSP/Source/SVMFunctions/%.cyclo: ../Drivers/CMSIS-DSP/Source/SVMFunctions/%.c Drivers/CMSIS-DSP/Source/SVMFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32WB55xx -c -I../Core/Inc -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/CMSIS-DSP" -I"C:/Users/manta/STM32CubeIDE/workspace_1.18.0/Tuner/Drivers/OLED" -I../Drivers/STM32WBxx_HAL_Driver/Inc -I../Drivers/STM32WBxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2d-DSP-2f-Source-2f-SVMFunctions

clean-Drivers-2f-CMSIS-2d-DSP-2f-Source-2f-SVMFunctions:
	-$(RM) ./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctions.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctions.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctions.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctions.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.su ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.cyclo ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o ./Drivers/CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.su

.PHONY: clean-Drivers-2f-CMSIS-2d-DSP-2f-Source-2f-SVMFunctions

