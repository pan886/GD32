void vTaskStartScheduler( void )
{
BaseType_t xReturn;

	/* Add the idle task at the lowest priority. */
	#if( configSUPPORT_STATIC_ALLOCATION == 1 )//如果使用静态内存分配
	{
		StaticTask_t *pxIdleTaskTCBBuffer = NULL;
		StackType_t *pxIdleTaskStackBuffer = NULL;
		uint32_t ulIdleTaskStackSize;

		/* The Idle task is created using user provided RAM - obtain the
		address of the RAM then create the idle task. 使用静态内存创建空闲任务，优先级最低*/
		vApplicationGetIdleTaskMemory( &pxIdleTaskTCBBuffer, &pxIdleTaskStackBuffer, &ulIdleTaskStackSize );
		xIdleTaskHandle = xTaskCreateStatic(	prvIdleTask,
												configIDLE_TASK_NAME,
												ulIdleTaskStackSize,
												( void * ) NULL, /*lint !e961.  The cast is not redundant for all compilers. */
												portPRIVILEGE_BIT, /* In effect ( tskIDLE_PRIORITY | portPRIVILEGE_BIT ), but tskIDLE_PRIORITY is zero. */
												pxIdleTaskStackBuffer,
												pxIdleTaskTCBBuffer ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */

		if( xIdleTaskHandle != NULL )
		{
			xReturn = pdPASS;
		}
		else
		{
			xReturn = pdFAIL;
		}
	}
	#else
	{
		/* The Idle task is being created using dynamically allocated RAM. */
		xReturn = xTaskCreate(	prvIdleTask,
								configIDLE_TASK_NAME,
								configMINIMAL_STACK_SIZE,
								( void * ) NULL,
								portPRIVILEGE_BIT, /* In effect ( tskIDLE_PRIORITY | portPRIVILEGE_BIT ), but tskIDLE_PRIORITY is zero. */
								&xIdleTaskHandle ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */
	}
	#endif /* configSUPPORT_STATIC_ALLOCATION */

	#if ( configUSE_TIMERS == 1 )//如果软件定时器使能
	{
		if( xReturn == pdPASS )//如果任务创建成功
		{
			xReturn = xTimerCreateTimerTask();//创建定时器服务任务
		}
		else
		{
			mtCOVERAGE_TEST_MARKER();//for test
		}
	}
	#endif /* configUSE_TIMERS */

	if( xReturn == pdPASS )
	{
		/* freertos_tasks_c_additions_init() should only be called if the user
		definable macro FREERTOS_TASKS_C_ADDITIONS_INIT() is defined, as that is
		the only macro called by the function. */
		#ifdef FREERTOS_TASKS_C_ADDITIONS_INIT
		{
			freertos_tasks_c_additions_init();
		}
		#endif

		/* Interrupts are turned off here, to ensure a tick does not occur
		before or during the call to xPortStartScheduler().  The stacks of
		the created tasks contain a status word with interrupts switched on
		so interrupts will automatically get re-enabled when the first task
		starts to run. */
		portDISABLE_INTERRUPTS();

		#if ( configUSE_NEWLIB_REENTRANT == 1 )
		{
			/* Switch Newlib's _impure_ptr variable to point to the _reent
			structure specific to the task that will run first.
			See the third party link http://www.nadler.com/embedded/newlibAndFreeRTOS.html
			for additional information. */
			_impure_ptr = &( pxCurrentTCB->xNewLib_reent );
		}
		#endif /* configUSE_NEWLIB_REENTRANT */

		xNextTaskUnblockTime = portMAX_DELAY;
		xSchedulerRunning = pdTRUE;
		xTickCount = ( TickType_t ) configINITIAL_TICK_COUNT;

		/* If configGENERATE_RUN_TIME_STATS is defined then the following
		macro must be defined to configure the timer/counter used to generate
		the run time counter time base.   NOTE:  If configGENERATE_RUN_TIME_STATS
		is set to 0 and the following line fails to build then ensure you do not
		have portCONFIGURE_TIMER_FOR_RUN_TIME_STATS() defined in your
		FreeRTOSConfig.h file. */
		portCONFIGURE_TIMER_FOR_RUN_TIME_STATS();

		traceTASK_SWITCHED_IN();//在选择运行任务后调用。 此时，pxCurrentTCB 包含即将进入 Running 状态的任务句柄。 

		/* Setting up the timer tick is hardware specific and thus in the
		portable interface. */
		if( xPortStartScheduler() != pdFALSE )
		{
			/* Should not reach here as if the scheduler is running the
			function will not return. */
		}
		else
		{
			/* Should only reach here if a task calls xTaskEndScheduler(). */
		}
	}
	else
	{
		/* This line will only be reached if the kernel could not be started,
		because there was not enough FreeRTOS heap to create the idle task
		or the timer task. */
		configASSERT( xReturn != errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY );
	}

	/* Prevent compiler warnings if INCLUDE_xTaskGetIdleTaskHandle is set to 0,
	meaning xIdleTaskHandle is not used anywhere else. */
	( void ) xIdleTaskHandle;
}
/*-----------------------------------------------------------*/


BaseType_t xPortStartScheduler( void )
{
    /* configMAX_SYSCALL_INTERRUPT_PRIORITY must not be set to 0. */
    configASSERT( configMAX_SYSCALL_INTERRUPT_PRIORITY );

    /* Get the real MTH should be set to ECLIC MTH register */
    uxMaxSysCallMTH = prvCalcMaxSysCallMTH(configMAX_SYSCALL_INTERRUPT_PRIORITY);
    FREERTOS_PORT_DEBUG("Max SysCall MTH is set to 0x%x\n", uxMaxSysCallMTH);

    #if( configASSERT_DEFINED == 1 )
    {
        /* Use the same mask on the maximum system call priority. */
        ucMaxSysCallPriority = prvCheckMaxSysCallPrio(configMAX_SYSCALL_INTERRUPT_PRIORITY);
        FREERTOS_PORT_DEBUG("Max SysCall Priority is set to %d\n", ucMaxSysCallPriority);
    }
    #endif /* conifgASSERT_DEFINED */

    __disable_irq();//Disable IRQ Interrupts
    /* Start the timer that generates the tick ISR.  Interrupts are disabled
    here already. */
    vPortSetupTimerInterrupt();

    /* Initialise the critical nesting count ready for the first task. */
    uxCriticalNesting = 0;

    /* Start the first task. */
    prvPortStartFirstTask();

    /* Should never get here as the tasks will now be executing!  Call the task
    exit error function to prevent compiler warnings about a static function
    not being called in the case that the application writer overrides this
    functionality by defining configTASK_RETURN_ADDRESS.  Call
    vTaskSwitchContext() so link time optimisation does not remove the
    symbol. */
    vTaskSwitchContext();
    prvTaskExitError();

    /* Should not get here! */
    return 0;
}



taskYIELD() 任务切换函数
#define taskYIELD()					portYIELD()
/* Scheduler utilities. */
#define portYIELD()                                                             \
{                                                                               \
    /* Set a software interrupt(SWI) request to request a context switch. */    \
    SysTimer_SetSWIRQ();                                                        \
    /* Barriers are normally not required but do ensure the code is completely  \
    within the specified behaviour for the architecture. */                     \
    __RWMB();                                                                   \
}


/**
 * \brief  Trigger or set software interrupt via system timer
 * \details
 * This function set the system timer MSIP bit in MSIP register.
 * \remarks
 * - Set system timer MSIP bit and generate a SW interrupt.
 * - \ref SysTimer_ClearSWIRQ
 * - \ref SysTimer_GetMsipValue
 */
__STATIC_FORCEINLINE void SysTimer_SetSWIRQ(void)
{
    SysTimer->MSIP |= SysTimer_MSIP_MSIP_Msk;
}
/*TIMER 可以用于生成软件中断。TIMER 中实现了一个 msip 寄存器，msip寄存器只有最低位为有效位，
该有效位直接作为软件中断，因此：软件写通过写1至msip寄存器产生软件中断
抢占式调度器会在时钟节拍中断中进行任务切换*/


