################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SPL/src/misc.c \
../SPL/src/stm32f4xx_adc.c \
../SPL/src/stm32f4xx_can.c \
../SPL/src/stm32f4xx_crc.c \
../SPL/src/stm32f4xx_cryp.c \
../SPL/src/stm32f4xx_cryp_aes.c \
../SPL/src/stm32f4xx_cryp_des.c \
../SPL/src/stm32f4xx_cryp_tdes.c \
../SPL/src/stm32f4xx_dac.c \
../SPL/src/stm32f4xx_dbgmcu.c \
../SPL/src/stm32f4xx_dcmi.c \
../SPL/src/stm32f4xx_dma.c \
../SPL/src/stm32f4xx_exti.c \
../SPL/src/stm32f4xx_flash.c \
../SPL/src/stm32f4xx_fsmc.c \
../SPL/src/stm32f4xx_gpio.c \
../SPL/src/stm32f4xx_hash.c \
../SPL/src/stm32f4xx_hash_md5.c \
../SPL/src/stm32f4xx_hash_sha1.c \
../SPL/src/stm32f4xx_i2c.c \
../SPL/src/stm32f4xx_iwdg.c \
../SPL/src/stm32f4xx_pwr.c \
../SPL/src/stm32f4xx_rcc.c \
../SPL/src/stm32f4xx_rng.c \
../SPL/src/stm32f4xx_rtc.c \
../SPL/src/stm32f4xx_sdio.c \
../SPL/src/stm32f4xx_spi.c \
../SPL/src/stm32f4xx_syscfg.c \
../SPL/src/stm32f4xx_tim.c \
../SPL/src/stm32f4xx_usart.c \
../SPL/src/stm32f4xx_wwdg.c 

OBJS += \
./SPL/src/misc.o \
./SPL/src/stm32f4xx_adc.o \
./SPL/src/stm32f4xx_can.o \
./SPL/src/stm32f4xx_crc.o \
./SPL/src/stm32f4xx_cryp.o \
./SPL/src/stm32f4xx_cryp_aes.o \
./SPL/src/stm32f4xx_cryp_des.o \
./SPL/src/stm32f4xx_cryp_tdes.o \
./SPL/src/stm32f4xx_dac.o \
./SPL/src/stm32f4xx_dbgmcu.o \
./SPL/src/stm32f4xx_dcmi.o \
./SPL/src/stm32f4xx_dma.o \
./SPL/src/stm32f4xx_exti.o \
./SPL/src/stm32f4xx_flash.o \
./SPL/src/stm32f4xx_fsmc.o \
./SPL/src/stm32f4xx_gpio.o \
./SPL/src/stm32f4xx_hash.o \
./SPL/src/stm32f4xx_hash_md5.o \
./SPL/src/stm32f4xx_hash_sha1.o \
./SPL/src/stm32f4xx_i2c.o \
./SPL/src/stm32f4xx_iwdg.o \
./SPL/src/stm32f4xx_pwr.o \
./SPL/src/stm32f4xx_rcc.o \
./SPL/src/stm32f4xx_rng.o \
./SPL/src/stm32f4xx_rtc.o \
./SPL/src/stm32f4xx_sdio.o \
./SPL/src/stm32f4xx_spi.o \
./SPL/src/stm32f4xx_syscfg.o \
./SPL/src/stm32f4xx_tim.o \
./SPL/src/stm32f4xx_usart.o \
./SPL/src/stm32f4xx_wwdg.o 

C_DEPS += \
./SPL/src/misc.d \
./SPL/src/stm32f4xx_adc.d \
./SPL/src/stm32f4xx_can.d \
./SPL/src/stm32f4xx_crc.d \
./SPL/src/stm32f4xx_cryp.d \
./SPL/src/stm32f4xx_cryp_aes.d \
./SPL/src/stm32f4xx_cryp_des.d \
./SPL/src/stm32f4xx_cryp_tdes.d \
./SPL/src/stm32f4xx_dac.d \
./SPL/src/stm32f4xx_dbgmcu.d \
./SPL/src/stm32f4xx_dcmi.d \
./SPL/src/stm32f4xx_dma.d \
./SPL/src/stm32f4xx_exti.d \
./SPL/src/stm32f4xx_flash.d \
./SPL/src/stm32f4xx_fsmc.d \
./SPL/src/stm32f4xx_gpio.d \
./SPL/src/stm32f4xx_hash.d \
./SPL/src/stm32f4xx_hash_md5.d \
./SPL/src/stm32f4xx_hash_sha1.d \
./SPL/src/stm32f4xx_i2c.d \
./SPL/src/stm32f4xx_iwdg.d \
./SPL/src/stm32f4xx_pwr.d \
./SPL/src/stm32f4xx_rcc.d \
./SPL/src/stm32f4xx_rng.d \
./SPL/src/stm32f4xx_rtc.d \
./SPL/src/stm32f4xx_sdio.d \
./SPL/src/stm32f4xx_spi.d \
./SPL/src/stm32f4xx_syscfg.d \
./SPL/src/stm32f4xx_tim.d \
./SPL/src/stm32f4xx_usart.d \
./SPL/src/stm32f4xx_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
SPL/src/%.o: ../SPL/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -ffreestanding -fno-builtin  -g3 -DSTM32F407xx -DHSE_VALUE=(8000000UL) -D__FPU_USED -DUSE_STDPERIPH_DRIVER -DARM_MATH_CM4 -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\core" -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\freertos\portable\GCC\ARM_CM4F" -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\freertos" -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\code" -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\SPL\inc" -I"C:\Users\Taras.Melnik\Documents\eclipse-workspace\Empty_project\freertos\include" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


