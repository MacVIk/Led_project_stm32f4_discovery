################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SPL/inc/i2c_timer.c 

OBJS += \
./SPL/inc/i2c_timer.o 

C_DEPS += \
./SPL/inc/i2c_timer.d 


# Each subdirectory must supply rules for building sources it contributes
SPL/inc/%.o: ../SPL/inc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin  -g3 -DSTM32F407xx -DHSE_VALUE=(8000000UL) -D__FPU_USED -DUSE_STDPERIPH_DRIVER -DARM_MATH_CM4 -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\core" -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\freertos\portable\GCC\ARM_CM4F" -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\freertos" -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\code" -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\SPL\inc" -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\freertos\include" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


