时间管理函数分析
1.	vTaskDelay 相对延时函数
#if ( INCLUDE_vTaskDelay == 1 )

	void vTaskDelay( const TickType_t xTicksToDelay )
	{
	BaseType_t xAlreadyYielded = pdFALSE;

		/* A delay time of zero just forces a reschedule. */
		if( xTicksToDelay > ( TickType_t ) 0U )
		{
			configASSERT( uxSchedulerSuspended == 0 );
			vTaskSuspendAll();//挂起任务调度器
			{
				traceTASK_DELAY();//hook宏，没有用，应该是作为系统保留的功能

				/* A task that is removed from the event list while the
				scheduler is suspended will not get placed in the ready
				list or removed from the blocked list until the scheduler
				is resumed.

				This task cannot be in an event list as it is the currently
				executing task. */
				prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );//将要延时的函数添加到延时列表
			}
			xAlreadyYielded = xTaskResumeAll();//恢复任务调度器
		}
		else
		{
			mtCOVERAGE_TEST_MARKER();
		}

		/* Force a reschedule if xTaskResumeAll has not already done so, we may
		have put ourselves to sleep. */
		if( xAlreadyYielded == pdFALSE )
		{
			portYIELD_WITHIN_API();//进行一次任务调度，调用了portYIELD()函数，这个函数调用了系统定时器中断SysTimer_SetSWIRQ()来请求上下文切换
		}
		else
		{
			mtCOVERAGE_TEST_MARKER();/*为每个 'if()' 条件的 'else' 路径中的 NOP（无操作）指令来测量“分支”覆盖率。 mtCOVERAGE_TEST_MARKER() 仅在测量测试覆盖率时定义 - 通常它是一个不生成任何代码的空宏。 */
		}
	}

#endif /* INCLUDE_vTaskDelay */


2 vTaskDelayUntil()绝对延时函数
#if ( INCLUDE_vTaskDelayUntil == 1 )

	void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement )
	{
	TickType_t xTimeToWake;
	BaseType_t xAlreadyYielded, xShouldDelay = pdFALSE;

		configASSERT( pxPreviousWakeTime );
		configASSERT( ( xTimeIncrement > 0U ) );
		configASSERT( uxSchedulerSuspended == 0 );

		vTaskSuspendAll();
		{
			/* Minor optimisation.  The tick count cannot change in this
			block. */
			const TickType_t xConstTickCount = xTickCount;

			/* Generate the tick time at which the task wants to wake. */
			xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;

			if( xConstTickCount < *pxPreviousWakeTime )
			{
				/* The tick count has overflowed since this function was
				lasted called.  In this case the only time we should ever
				actually delay is if the wake time has also	overflowed,
				and the wake time is greater than the tick time.  When this
				is the case it is as if neither time had overflowed. */
				if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xConstTickCount ) )//溢出情况
				{
					xShouldDelay = pdTRUE;
				}
				else
				{
					mtCOVERAGE_TEST_MARKER();
				}
			}
			else
			{
				/* The tick time has not overflowed.  In this case we will
				delay if either the wake time has overflowed, and/or the
				tick time is less than the wake time. */
				if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xConstTickCount ) )//正常情况
				{
					xShouldDelay = pdTRUE;
				}
				else
				{
					mtCOVERAGE_TEST_MARKER();
				}
			}

			/* Update the wake time ready for the next call. */
			*pxPreviousWakeTime = xTimeToWake;

			if( xShouldDelay != pdFALSE )
			{
				traceTASK_DELAY_UNTIL( xTimeToWake );

				/* prvAddCurrentTaskToDelayedList() needs the block time, not
				the time to wake, so subtract the current tick count. */
				prvAddCurrentTaskToDelayedList( xTimeToWake - xConstTickCount, pdFALSE );
			}
			else
			{
				mtCOVERAGE_TEST_MARKER();
			}
		}
		xAlreadyYielded = xTaskResumeAll();

		/* Force a reschedule if xTaskResumeAll has not already done so, we may
		have put ourselves to sleep. */
		if( xAlreadyYielded == pdFALSE )
		{
			portYIELD_WITHIN_API();
		}
		else
		{
			mtCOVERAGE_TEST_MARKER();
		}
	}

#endif /* INCLUDE_vTaskDelayUntil */
