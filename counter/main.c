/*
 * This example demonstrates how to configure control clock
 * and shows how much FLASH might deteriorate execution speed
 */

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"

#define FLASH_0LAT_DELAY0LAT
//#define FLASH_0LAT_DELAY1LAT
//#define FLASH_1LAT_DELAY0LAT
//#define FLASH_1LAT_DELAY1LAT

/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */
static void rcc_config()
{
    /* Set FLASH latency */
#if defined(FLASH_0LAT_DELAY0LAT) || defined(FLASH_0LAT_DELAY1LAT)
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_0);
#else
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);
#endif

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

/*
 * Clock on GPIOC and set pin with Blue led connected
 */
static void gpio_config(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_4, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_5, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_6, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_7, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_10, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_11, LL_GPIO_MODE_OUTPUT);

    return;
}

/*
 * Just set of commands to waste CPU power for a second
 * (basically it is a simple cycle with a predefined number
 * of loops)
 */
__attribute__((naked)) static void delay(void)
{	
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0x0005000"); //9600000   1000000
}

/*
 * Here we call configure all peripherals we need and
 * start blinking upon current mode
 */

void show_digit(digit)
{
	uint16_t decoder[] = {
		LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_4 | LL_GPIO_PIN_6 | LL_GPIO_PIN_7,					//0
		LL_GPIO_PIN_2 | LL_GPIO_PIN_6,
		LL_GPIO_PIN_0 | LL_GPIO_PIN_6 | LL_GPIO_PIN_5 | LL_GPIO_PIN_4 | LL_GPIO_PIN_7,
		LL_GPIO_PIN_0 | LL_GPIO_PIN_6 | LL_GPIO_PIN_5 | LL_GPIO_PIN_2 | LL_GPIO_PIN_7,
		LL_GPIO_PIN_1 | LL_GPIO_PIN_6 | LL_GPIO_PIN_5 | LL_GPIO_PIN_2,
		LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_5 | LL_GPIO_PIN_2 | LL_GPIO_PIN_7,
		LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_5 | LL_GPIO_PIN_2 | LL_GPIO_PIN_7 | LL_GPIO_PIN_4,
		LL_GPIO_PIN_0 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2,
		LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | LL_GPIO_PIN_4 | LL_GPIO_PIN_7,
		LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | LL_GPIO_PIN_7					//9
	};
	uint16_t out = decoder[digit];

    LL_GPIO_SetOutputPin(GPIOB, out);
    LL_GPIO_ResetOutputPin(GPIOB, 0x000000ffU - out);
    return;
}

void show_num(pos, num)
{
	switch (pos)
	{
		case 0:
		LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_11);
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_10);
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_9);
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_8);
		break;
		case 1:
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_11);
		LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_10);
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_9);
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_8);
		break;
		case 2:
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_11);
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_10);
		LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_9);
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_8);
		break;
		case 3:
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_11);
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_10);
		LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_9);
		LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_8);
		break;
	}
	show_digit(num);
	delay();//for (int i = 0; i <= 10000; i++);
	return;
}

void to_display(number)
{
	if (number > 999)
		show_num(3, (int) (number % 10000) / 1000);

	if (number > 99)
		show_num(2, (int) (number % 1000) / 100);

	if (number > 9)
		show_num(1, (int) (number % 100) / 10);

	show_num(0, number % 10);
	return;
}

int main(void)
{
	int i = 0;
	int mode = 0;
    rcc_config();
    gpio_config();
    while (1) {
    	if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0))
		{
			i++;
			if (mode == 0)
			{
				delay();
				for (int cl = 0; (cl <= 200) && (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0)); cl++) 
					to_display(i);
				if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0))
					mode = 1;
			}
			to_display(i);
		}
		else 
		{
			mode = 0;
    		to_display(i);
    	}
    }
    return 0;
}
