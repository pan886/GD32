/*
    FreeRTOS V9.0.0 - Copyright (C) 2016 Real Time Engineers Ltd.
    All rights reserved

    VISIT http://www.FreeRTOS.org TO ENSURE YOU ARE USING THE LATEST VERSION.

    This file is part of the FreeRTOS distribution.

    FreeRTOS is free software; you can redistribute it and/or modify it under
    the terms of the GNU General Public License (version 2) as published by the
    Free Software Foundation >>>> AND MODIFIED BY <<<< the FreeRTOS exception.

    ***************************************************************************
    >>!   NOTE: The modification to the GPL is included to allow you to     !<<
    >>!   distribute a combined work that includes FreeRTOS without being   !<<
    >>!   obliged to provide the source code for proprietary components     !<<
    >>!   outside of the FreeRTOS kernel.                                   !<<
    ***************************************************************************

    FreeRTOS is distributed in the hope that it will be useful, but WITHOUT ANY
    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
    FOR A PARTICULAR PURPOSE.  Full license text is available on the following
    link: http://www.freertos.org/a00114.html

    ***************************************************************************
     *                                                                       *
     *    FreeRTOS provides completely free yet professionally developed,    *
     *    robust, strictly quality controlled, supported, and cross          *
     *    platform software that is more than just the market leader, it     *
     *    is the industry's de facto standard.                               *
     *                                                                       *
     *    Help yourself get started quickly while simultaneously helping     *
     *    to support the FreeRTOS project by purchasing a FreeRTOS           *
     *    tutorial book, reference manual, or both:                          *
     *    http://www.FreeRTOS.org/Documentation                              *
     *                                                                       *
    ***************************************************************************

    http://www.FreeRTOS.org/FAQHelp.html - Having a problem?  Start by reading
    the FAQ page "My application does not run, what could be wrong?".  Have you
    defined configASSERT()?

    http://www.FreeRTOS.org/support - In return for receiving this top quality
    embedded software for free we request you assist our global community by
    participating in the support forum.

    http://www.FreeRTOS.org/training - Investing in training allows your team to
    be as productive as possible as early as possible.  Now you can receive
    FreeRTOS training directly from Richard Barry, CEO of Real Time Engineers
    Ltd, and the world's leading authority on the world's leading RTOS.

    http://www.FreeRTOS.org/plus - A selection of FreeRTOS ecosystem products,
    including FreeRTOS+Trace - an indispensable productivity tool, a DOS
    compatible FAT file system, and our tiny thread aware UDP/IP stack.

    http://www.FreeRTOS.org/labs - Where new FreeRTOS products go to incubate.
    Come and try FreeRTOS+TCP, our new open source TCP/IP stack for FreeRTOS.

    http://www.OpenRTOS.com - Real Time Engineers ltd. license FreeRTOS to High
    Integrity Systems ltd. to sell under the OpenRTOS brand.  Low cost OpenRTOS
    licenses offer ticketed support, indemnification and commercial middleware.

    http://www.SafeRTOS.com - High Integrity Systems also provide a safety
    engineered and independently SIL3 certified version for use in safety and
    mission critical applications that require provable dependability.

    1 tab == 4 spaces!
*/

/* Kernel includes. */
#include "FreeRTOS.h" /* Must come first. */
#include "queue.h"    /* RTOS queue related API prototypes. */
#include "semphr.h"   /* Semaphore related API prototypes. */
#include "task.h"     /* RTOS task related API prototypes. */
#include "timers.h"   /* Software timer related API prototypes. */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "nuclei_sdk_soc.h"
#include "gd32vf103v_rvstar.h"
#include "n200_func.h"
#include "gd32vf103_eclic.h"
#include "event_groups.h"
/* The period of the example software timer, specified in milliseconds, and
converted to ticks using the pdMS_TO_TICKS() macro. */
#define mainSOFTWARE_TIMER_PERIOD_MS    pdMS_TO_TICKS(100)
#define mainQUEUE_LENGTH                (1)

static void prvSetupHardware(void);
extern void idle_task(void);
static void vExampleTimerCallback(TimerHandle_t xTimer);

/* The queue used by the queue send and queue receive tasks. */
static QueueHandle_t xQueue = NULL;

static TaskHandle_t StartTask1_Handler;
static TaskHandle_t StartTask2_Handler;
static TaskHandle_t keyTask_Handler;
EventGroupHandle_t EventGroupHandler;

int err =0;
SemaphoreHandle_t countSemaphore;
SemaphoreHandle_t BinarySemaphore;
SemaphoreHandle_t Mutexsemaphore;
uint8_t semavalue;
#define EVENTBIT_0   (1<<0)
#define EVENTBIT_1   (1<<1)
#define EVENTBIT_ALL  (EVENTBIT_0|EVENTBIT_1)

volatile uint32_t FreeRTOSRunTimeTicks = 0;
int xy=0;
int a[] ={100,200};
char runtimeinfo[400];

void delay()
{
	int i,j,k;
	for(i=0;i<255;i++)
		for(j=0;j<255;j++)
			for(k=0;k<200;k++);
}
void prvSetupHardware(void)
{
//	//gd_led_init(LED1);
//	//gd_led_init(LED2);
//gd_key_init(KEY_WAKEUP,KEY_MODE_GPIO);
//	gd_key_init(5 ,KEY_MODE_GPIO);
//	gd_key_init(6 ,KEY_MODE_GPIO);
// gd_rvstar_led_init(LED1);
//
//    gd_rvstar_led_init(LED2);
//    gd_rvstar_led_init(LED3);

}
void onetimerTimerCallback(TimerHandle_t xTimer);
void start_task1(void *pvParameters);
void start_task2(void *pvParameters);
void key_task(void *pvParameters);
List_t TestList;//for test
ListItem_t ListItem1;
ListItem_t ListItem2;
ListItem_t ListItem3;
uint8_t sendbuf[]={1,2,3,4,5,6,7,8,9,10};
uint8_t queuebuf[sizeof(sendbuf)];
QueueHandle_t Msg_Queue;
uint8_t msgq_remain_size;
uint8_t msgq_total_size;
uint8_t *buf1;
TimerHandle_t xExampleSoftwareTimer = NULL;
TimerHandle_t onetimer = NULL;
int main(void)
{


    /* Configure the system ready to run the demo.  The clock configuration
    can be done here if it was not done before main() was called. */
    prvSetupHardware();
  //  BinarySemaphore = xSemaphoreCreateBinary();
    Mutexsemaphore = xSemaphoreCreateMutex();


    xQueue = xQueueCreate(/* The number of items the queue can hold. */
                          mainQUEUE_LENGTH,
                          /* The size of each item the queue holds. */
                          sizeof(uint32_t));

    if (xQueue == NULL) {
        printf("Unable to create xQueue due to low memory.\n");
        while(1);
    }
    xTaskCreate((TaskFunction_t)start_task1, (const char *)"start_task1",
                (uint16_t)512, (void *)NULL, (UBaseType_t)2,
                (TaskHandle_t *)&StartTask1_Handler);

    xTaskCreate((TaskFunction_t)start_task2, (const char *)"start_task2",
                (uint16_t)256, (void *)NULL, (UBaseType_t)3,
                (TaskHandle_t *)&StartTask2_Handler);

    xTaskCreate((TaskFunction_t)key_task, (const char *)"key_task",
                (uint16_t)256, (void *)NULL, (UBaseType_t)4,
                (TaskHandle_t *)&keyTask_Handler);



    printf("Before StartScheduler\r\n");

    vTaskStartScheduler();

    printf("OS should never run to here\r\n");

    while(1);
}

void start_task1(void *pvParameters)
{
    int cnt = 0;
    int count =0;
    int conut_tick=0;

    uint8_t remain_size;

	gd_rvstar_led_init(LED3);
	gd_rvstar_led_init(LED1);
	gd_rvstar_led_init(LED2);

	gd_rvstar_key_init(WAKEUP_KEY_GPIO_PORT,KEY_MODE_EXTI);


    while (1) {


    	xSemaphoreTake(Mutexsemaphore,portMAX_DELAY);
    	 printf("low task is running %d.....\r\n", cnt++);
    	 for(count = 0;count<5000000;count++)
    	 {
    		 	 taskYIELD();
    	 }
    	 xSemaphoreGive(Mutexsemaphore);

    	 // vTaskDelayUntil(&PreviousWakeTime,TimeIncrement);
    	 vTaskDelay(500);

    }
}

void start_task2(void *pvParameters)
{
    int cnt = 0;
    uint8_t num =0;
    BaseType_t err;
    EventBits_t EventValue;
    int NewValue;


    while (1) {

    	printf("middle task is running %d.....\r\n", cnt++);
       vTaskDelay(100);
    }
}



void key_task(void *pvParameters)
{
	 int cnt = 0;
	 int NewValue,LastValue;
	while(1)
	{



			printf("high task pend\n");

			xSemaphoreTake(Mutexsemaphore,portMAX_DELAY);

		    printf("high task get mute\n");

		    xSemaphoreGive(Mutexsemaphore);

		 printf("high_task is running %d.....\r\n", cnt++);
		 vTaskDelay(100);
	}

}

static void vExampleTimerCallback(TimerHandle_t xTimer)
{
    /* The timer has expired.  Count the number of times this happens.  The
    timer that calls this function is an auto re-load timer, so it will
    execute periodically. */
    static int cnt = 0;
    printf("autorelaodtimers Callback %d\r\n", cnt++);
}

void vApplicationTickHook(void)
{
    // BaseType_t xHigherPriorityTaskWoken = pdFALSE;

    /* The RTOS tick hook function is enabled by setting configUSE_TICK_HOOK to
    1 in FreeRTOSConfig.h.

    "Give" the semaphore on every 500th tick interrupt. */

    /* If xHigherPriorityTaskWoken is pdTRUE then a context switch should
    normally be performed before leaving the interrupt (because during the
    execution of the interrupt a task of equal or higher priority than the
    running task was unblocked).  The syntax required to context switch from
    an interrupt is port dependent, so check the documentation of the port you
    are using.

    In this case, the function is running in the context of the tick interrupt,
    which will automatically check for the higher priority task to run anyway,
    so no further action is required. */
}
/*-----------------------------------------------------------*/

void vApplicationMallocFailedHook(void)
{
    /* The malloc failed hook is enabled by setting
    configUSE_MALLOC_FAILED_HOOK to 1 in FreeRTOSConfig.h.

    Called if a call to pvPortMalloc() fails because there is insufficient
    free memory available in the FreeRTOS heap.  pvPortMalloc() is called
    internally by FreeRTOS API functions that create tasks, queues, software
    timers, and semaphores.  The size of the FreeRTOS heap is set by the
    configTOTAL_HEAP_SIZE configuration constant in FreeRTOSConfig.h. */
    printf("you are a dog\n");
    while(1);
}
/*-----------------------------------------------------------*/

void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName)
{
    /* Run time stack overflow checking is performed if
    configconfigCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
    function is called if a stack overflow is detected.  pxCurrentTCB can be
    inspected in the debugger if the task name passed into this function is
    corrupt. */
    printf("Stack Overflow\n");
    while(1);
}
/*-----------------------------------------------------------*/

extern UBaseType_t uxCriticalNesting;
void vApplicationIdleHook(void)
{
    // volatile size_t xFreeStackSpace;
    /* The idle task hook is enabled by setting configUSE_IDLE_HOOK to 1 in
    FreeRTOSConfig.h.

    This function is called on each cycle of the idle task.  In this case it
    does nothing useful, other than report the amount of FreeRTOS heap that
    remains unallocated. */
    /* By now, the kernel has allocated everything it is going to, so
    if there is a lot of heap remaining unallocated then
    the value of configTOTAL_HEAP_SIZE in FreeRTOSConfig.h can be
    reduced accordingly. */
}



/**
    \brief      configure the GPIO ports
    \param[in]  none
    \param[out] none
    \retval     none
  */
void gpio_config(void)
{
    rcu_periph_clock_enable(RCU_GPIOA);
    rcu_periph_clock_enable(RCU_AF);

    /*Configure PA0(TIMER1 CH0) as alternate function*/
    gpio_init(GPIOA, GPIO_MODE_AF_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_0);
}


/**
    \brief      configure the TIMER peripheral
    \param[in]  none
    \param[out] none
    \retval     none
  */
void timer_config(void)
{
    /* ----------------------------------------------------------------------------
    TIMER1 Configuration:
    TIMER1CLK = SystemCoreClock/5400 = 20KHz.
    TIMER1 configuration is timing mode, and the timing is 0.2s(4000/20000 = 0.2s).
    CH0 update rate = TIMER1 counter clock/CH0CV = 20000/4000 = 5Hz.
    ---------------------------------------------------------------------------- */
    timer_oc_parameter_struct timer_ocinitpara;
    timer_parameter_struct timer_initpara;

    rcu_periph_clock_enable(RCU_TIMER1);

    timer_deinit(TIMER1);
    /* initialize TIMER init parameter struct */
    timer_struct_para_init(&timer_initpara);
    /* TIMER1 configuration */
    timer_initpara.prescaler         = 5399;
    timer_initpara.alignedmode       = TIMER_COUNTER_EDGE;
    timer_initpara.counterdirection  = TIMER_COUNTER_UP;
    timer_initpara.period            = 4000;
    timer_initpara.clockdivision     = TIMER_CKDIV_DIV1;
    timer_init(TIMER1, &timer_initpara);

    /* initialize TIMER channel output parameter struct */
    timer_channel_output_struct_para_init(&timer_ocinitpara);
    /* CH0,CH1 and CH2 configuration in OC timing mode */
    timer_ocinitpara.outputstate  = TIMER_CCX_ENABLE;
    timer_ocinitpara.ocpolarity   = TIMER_OC_POLARITY_HIGH;
    timer_ocinitpara.ocidlestate  = TIMER_OC_IDLE_STATE_LOW;
    timer_channel_output_config(TIMER1, TIMER_CH_0, &timer_ocinitpara);

    /* CH0 configuration in OC timing mode */
    timer_channel_output_pulse_value_config(TIMER1, TIMER_CH_0, 1);
    timer_channel_output_mode_config(TIMER1, TIMER_CH_0, TIMER_OC_MODE_TIMING);
    timer_channel_output_shadow_config(TIMER1, TIMER_CH_0, TIMER_OC_SHADOW_DISABLE);

    timer_interrupt_enable(TIMER1, TIMER_INT_CH0);
    timer_enable(TIMER1);
}


void timer2_config(void)
{
	FreeRTOSRunTimeTicks = 0;
    /* ----------------------------------------------------------------------------
    TIMER1 Configuration:
    TIMER1CLK = SystemCoreClock/5400 = 20KHz.
    TIMER1 configuration is timing mode, and the timing is 0.2s(4000/20000 = 0.2s).
    CH0 update rate = TIMER1 counter clock/CH0CV = 20000/4000 = 5Hz.
    ---------------------------------------------------------------------------- */
    timer_oc_parameter_struct timer_ocinitpara;
    timer_parameter_struct timer_initpara;

    rcu_periph_clock_enable(RCU_TIMER2);

    timer_deinit(TIMER2);
    /* initialize TIMER init parameter struct */
    timer_struct_para_init(&timer_initpara);
    /* TIMER1 configuration */
    timer_initpara.prescaler         = 5399;
    timer_initpara.alignedmode       = TIMER_COUNTER_EDGE;
    timer_initpara.counterdirection  = TIMER_COUNTER_UP;
    timer_initpara.period            = 4000;
    timer_initpara.clockdivision     = TIMER_CKDIV_DIV1;
    timer_init(TIMER2, &timer_initpara);

    /* initialize TIMER channel output parameter struct */
    timer_channel_output_struct_para_init(&timer_ocinitpara);
    /* CH0,CH1 and CH2 configuration in OC timing mode */
    timer_ocinitpara.outputstate  = TIMER_CCX_ENABLE;
    timer_ocinitpara.ocpolarity   = TIMER_OC_POLARITY_HIGH;
    timer_ocinitpara.ocidlestate  = TIMER_OC_IDLE_STATE_LOW;
    timer_channel_output_config(TIMER2, TIMER_CH_0, &timer_ocinitpara);

    /* CH0 configuration in OC timing mode */
    timer_channel_output_pulse_value_config(TIMER2, TIMER_CH_0, 4);
    timer_channel_output_mode_config(TIMER2, TIMER_CH_0, TIMER_OC_MODE_TIMING);
    timer_channel_output_shadow_config(TIMER2, TIMER_CH_0, TIMER_OC_SHADOW_DISABLE);

    timer_interrupt_enable(TIMER2, TIMER_INT_CH0);
    timer_enable(TIMER2);
}


/**
  * @brief  This function handles TIMER1 interrupt request.
  * @param  None
  * @retval None
  */
void TIMER1_IRQHandler(void)
{
    if(SET == timer_interrupt_flag_get(TIMER1, TIMER_INT_CH0)){
        /* clear channel 0 interrupt bit */
        timer_interrupt_flag_clear(TIMER1, TIMER_INT_CH0);
      //  gd_rvstar_led_toggle(LED2);
        FreeRTOSRunTimeTicks++;
       // printf("timer1 output\n");
    }
}




/**
  * @brief  This function handles TIMER1 interrupt request.
  * @param  None
  * @retval None
  */
void TIMER2_IRQHandler(void)
{
    if(SET == timer_interrupt_flag_get(TIMER2, TIMER_INT_CH0)){
        /* clear channel 0 interrupt bit */
        timer_interrupt_flag_clear(TIMER2, TIMER_INT_CH0);
       // gd_rvstar_led_toggle(LED1);
        printf("timer2 output\n");
    }
}

/**
    \brief      configure the EXTI peripheral for user key
    \param[in]  none
    \param[out] none
    \retval     none
  */
void user_key_exti_config()
{
    /* enable the AF clock */
    rcu_periph_clock_enable(RCU_AF);

    /* connect EXTI line to key GPIO pin */
    gpio_exti_source_select(WAKEUP_KEY_EXTI_PORT_SOURCE, WAKEUP_KEY_EXTI_PIN_SOURCE);//PA0 wakeup

    /* configure key EXTI line */
    exti_init(EXTI_0, EXTI_INTERRUPT, EXTI_TRIG_FALLING);
    exti_interrupt_flag_clear(EXTI_0);
}




void EXTI0_IRQHandler()
{
	BaseType_t xHigherPriorityTaskWoken,result;
    if (SET == exti_interrupt_flag_get(WAKEUP_KEY_PIN)){

        if(RESET == gd_rvstar_key_state_get(KEY_WAKEUP))//io input state
        {

            /* clear EXTI lines interrupt flag */
            exti_interrupt_flag_clear(WAKEUP_KEY_PIN);
            xSemaphoreGiveFromISR(BinarySemaphore,&xHigherPriorityTaskWoken);

        }
       //
    }

}



