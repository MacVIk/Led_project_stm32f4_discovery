#include "stm32f4xx.h"
#include "system_stm32f4xx.h"
//#include "misc.h"
//#include "stm32f4xx_tim.h"
#include "stm32f4xx_gpio.h"
#include "stm32f4xx_rcc.h"
#include "stm32f4xx_flash.h"

/*
 *   System Clock Configuration
 *   The system Clock is configured as follow :
 *   System Clock source            = PLL (HSE)
 *   SYSCLK(Hz)                     = 168000000
 *   HCLK(Hz)                       = 168000000
 *   AHB Prescaler                  = 1
 *   APB1 Prescaler                 = 4
 *   APB2 Prescaler                 = 2
 *   HSE Frequency(Hz)              = 8000000
 *   PLL_M                          = 8
 *   PLL_N                          = 336
 *   PLL_P                          = 2
 *   PLL_Q                          = 7
 *   VDD(V)                         = 3.3
 *   Main regulator output voltage  = Scale1 mode
 *   Flash Latency(WS)              = 5
 */

/*
 * Do not delete this function It provides
 * The correct System Clock settings
 */
void system_clock_config()
{
        /* Enable HSE oscillator */
        RCC_HSEConfig(RCC_HSE_ON);
        while (!RCC_GetFlagStatus(RCC_FLAG_HSERDY));

        /* Set FLASH latency */
        FLASH_SetLatency(FLASH_Latency_5);

        /* Set AHB (system bus) clock frequency */
        RCC_HCLKConfig(RCC_SYSCLK_Div1);

        /* Set APB1 and APB2 clock frequency */
        RCC_PCLK1Config(RCC_HCLK_Div4);
        RCC_PCLK2Config(RCC_HCLK_Div2);

         /* Set HSE as source for PLL
         * Set divider (M, N, P, Q)
         * Enable PLL
         */
        RCC_PLLConfig(RCC_PLLSource_HSE, 8, 336, 2, 7);
        RCC_PLLCmd(ENABLE);
        while (!RCC_GetFlagStatus(RCC_FLAG_PLLRDY));

        /* SysClk activation on the main PLL */
        RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);
        while (!RCC_GetFlagStatus(RCC_FLAG_PLLRDY));

        /* Update CMSIS variable */
        SystemCoreClock = 168000000;
}

#include <stdio.h>
#include "FreeRTOS.h"
#include "FreeRTOSConfig.h"
#include "task.h"

 /* Demo features */
void set_led_pin();
void run(void *pvParameters);

int main(void) {

        /* Set described options*/
        system_clock_config();

        /* Set GPIO for LED*/
        set_led_pin();

        /* Task create with a "run" function inside */
        xTaskCreate(run, "run", 64, NULL, 1, NULL);

        /* Start freertos */
        vTaskStartScheduler();

        return 1;
}

void run(void *pvParameters)
{
        /* Infinite circle with a LED flashing */
        while (1) {
                GPIO_SetBits(GPIOD, GPIO_Pin_13);
                vTaskDelay(1000);
                GPIO_ResetBits(GPIOD, GPIO_Pin_13);
                vTaskDelay(1000);
     }
}

void set_led_pin()
{
        /* Set port clocking */
        RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);

        /* Defalt settings */
        GPIO_InitTypeDef pin13;
        GPIO_StructInit(&pin13);

        /* User settings */
        pin13.GPIO_Mode = GPIO_Mode_OUT;
        pin13.GPIO_Pin = GPIO_Pin_13;
        pin13.GPIO_OType = GPIO_OType_PP;
        pin13.GPIO_PuPd = GPIO_PuPd_NOPULL;

        /* User settings applying */
        GPIO_Init(GPIOD, &pin13);
}

