/*
 * Copyright (c) 2006-2019, RT-Thread Development Team
 * Copyright (c) 2019-Present Nuclei Limited. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2020-03-26     Huaqi      the first version
 */

#include "nuclei_sdk_soc.h"
#include <rtthread.h>

#define THREAD_PRIORITY 2
#define THREAD_STACK_SIZE 512
#define THREAD_TIMESLICE 5
#define THREAD_NUM      3

static rt_timer_t timer1;
static rt_timer_t timer2;
static int cnt = 0;
/* Align stack when using static thread */
ALIGN(RT_ALIGN_SIZE)
static rt_uint8_t thread_stack[THREAD_NUM][THREAD_STACK_SIZE];
static struct rt_thread tid[THREAD_NUM];



/* 定 时 器 1 超 时 函 数 */
static void timeout1(void *parameter)
{
rt_kprintf("periodic timer is timeout %d\n", cnt);
/* 运 行 第 10 次， 停 止 周 期 定 时 器 */
if (cnt++>= 9)
{
rt_timer_stop(timer1);
rt_kprintf("periodic timer was stopped! \n");
}
}

/* 定 时 器 2 超 时 函 数 */
static void timeout2(void *parameter)
{
rt_kprintf("one shot timer is timeout\n");
}


/* Thread entry function */
static void thread_entry(void *parameter)
{
    rt_uint32_t count = 0;

    while (1) {
        rt_kprintf("thread1 count: %d\n", count++);
        rt_thread_mdelay(500);
    }
}


static void thread_entry3(void *parameter)
{
	rt_uint32_t count = 0;
	while(1)
	{
		rt_kprintf("thread2 count: %d\n", count++);
		rt_thread_mdelay(500);
	}
}

/* Thread demo */
int create_thread_demo(void)
{
    int i;
    rt_thread_t tidd,tidd1;
//    for (i = 0; i < THREAD_NUM; i ++) {
//        /* Create static threads */
//        rt_thread_init(&tid[i], "thread", thread_entry, (void *)i, thread_stack[i],
//                   THREAD_STACK_SIZE, THREAD_PRIORITY, THREAD_TIMESLICE);
//    }


    tidd =  rt_thread_create("thread1",
    		thread_entry, (void*)1,
    		THREAD_STACK_SIZE,
    		THREAD_PRIORITY, THREAD_TIMESLICE);

    tidd1 = rt_thread_create("thread2",
    		thread_entry3, (void*)1,
    		THREAD_STACK_SIZE,
    		THREAD_PRIORITY, THREAD_TIMESLICE);
    /* Startup threads  */
//    for (i = 0; i < THREAD_NUM; i ++) {
//        rt_thread_startup(&tid[i]);
//    }
    rt_thread_startup(tidd);
    rt_thread_startup(tidd1);
    /* 创 建 定 时 器 1 周 期 定 时 器 */
    timer1 = rt_timer_create("timer1", timeout1, RT_NULL, 50,RT_TIMER_FLAG_PERIODIC);
    /* 启 动 定 时 器 1 */
    if (timer1 != RT_NULL)
    rt_timer_start(timer1);
    /* 创 建 定 时 器 2 单 次 定 时 器 */
    timer2 = rt_timer_create("timer2", timeout2,RT_NULL, 10,RT_TIMER_FLAG_ONE_SHOT);
    if (timer2 != RT_NULL)
    rt_timer_start(timer2);

    rt_thread_startup(tidd);
    return 0;
}

int main(void)
{
    rt_uint32_t count = 0;

    create_thread_demo();

    while (1) {
       // rt_kprintf("Main thread count: %d\n", count++);
       // rt_thread_mdelay(1000);
    }
}
