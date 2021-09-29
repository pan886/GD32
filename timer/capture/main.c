#include "gd32vf103.h"
#include "gd32vf103_timer.h"
#include "gd32vf103_gpio.h"
#include "gd32vf103_usart.h"
#include "n200_func.h"
#include <stdio.h>
#include "gd32vf103_dac.h"
#include "gd32vf103_i2c.h"
#include "gd32vf103v_rvstar.h"
#include "mpu.h"
#include "i2c.h"
#include "gd32vf103_eclic.h"
#include "gd32vf103_bkp.h"
#include "gd32vf103_dma.h"

#include "gd32vf103.h"

#include "nuclei_sdk_soc.h"
#include "gd32vf103v_rvstar.h"
#include "gd32vf103.h"


uint16_t readvalue1 = 0, readvalue2 = 0;
uint16_t ccnumber = 0;
uint32_t count = 0;
float fre = 0;

/* configure the GPIO ports */
void gpio_configuration(void);
/* configure the TIMER peripheral */
void timer_configuration(void);

/**
    \brief      configure the GPIO ports
    \param[in]  none
    \param[out] none
    \retval     none
  */
void gpio_configuration(void)
{
    rcu_periph_clock_enable(RCU_GPIOA);
    rcu_periph_clock_enable(RCU_AF);

    /*configure PA6(TIMER2 CH0) as alternate function*/
    gpio_init(GPIOA, GPIO_MODE_IN_FLOATING, GPIO_OSPEED_50MHZ, GPIO_PIN_6);
}



/**
    \brief      configure the TIMER peripheral
    \param[in]  none
    \param[out] none
    \retval     none
  */
void timer_configuration(void)
{
    /* TIMER2 configuration: input capture mode -------------------
    the external signal is connected to TIMER2 CH0 pin(PA6)
    the rising edge is used as active edge
    the TIMER2 CH0CV is used to compute the frequency value
    ------------------------------------------------------------ */
    timer_ic_parameter_struct timer_icinitpara;
    timer_parameter_struct timer_initpara;

    rcu_periph_clock_enable(RCU_TIMER2);

    timer_deinit(TIMER2);
    /* initialize TIMER init parameter struct */
    timer_struct_para_init(&timer_initpara);
    /* TIMER2 configuration */
    timer_initpara.prescaler         = 107;
    timer_initpara.alignedmode       = TIMER_COUNTER_EDGE;
    timer_initpara.counterdirection  = TIMER_COUNTER_UP;
    timer_initpara.period            = 65535;
    timer_initpara.clockdivision     = TIMER_CKDIV_DIV1;
    timer_initpara.repetitioncounter = 0;
    timer_init(TIMER2,&timer_initpara);

    /* TIMER2  configuration */
    /* initialize TIMER channel input parameter struct */
    timer_channel_input_struct_para_init(&timer_icinitpara);
    /* TIMER2 CH0 input capture configuration */
    timer_icinitpara.icpolarity  = TIMER_IC_POLARITY_RISING;
    timer_icinitpara.icselection = TIMER_IC_SELECTION_DIRECTTI;
    timer_icinitpara.icprescaler = TIMER_IC_PSC_DIV1;
    timer_icinitpara.icfilter    = 0x0;
    timer_input_capture_config(TIMER2,TIMER_CH_0,&timer_icinitpara);

    /* auto-reload preload enable */
    timer_auto_reload_shadow_enable(TIMER2);
    /* clear channel 0 interrupt bit */
    timer_interrupt_flag_clear(TIMER2,TIMER_INT_FLAG_CH0);
    /* channel 0 interrupt enable */
    timer_interrupt_enable(TIMER2,TIMER_INT_CH0);

    /* TIMER2 counter enable */
    timer_enable(TIMER2);
}

/*!
    \brief      main function
    \param[in]  none
    \param[out] none
    \retval     none
*/
int main(void)
{
    gpio_configuration();
    printf("the frequence is %d\n\r",(uint16_t)fre);
    eclic_global_interrupt_enable();
    eclic_set_nlbits(ECLIC_GROUP_LEVEL3_PRIO1);
    eclic_irq_enable(TIMER2_IRQn,1,0);
    timer_configuration();
    while (1);
}


/**
  * @brief  This function handles TIMER2 interrupt request.
  * @param  None
  * @retval None
  */
void TIMER2_IRQHandler(void)
{
    if(SET == timer_interrupt_flag_get(TIMER2,TIMER_INT_FLAG_CH0)){
        /* clear channel 0 interrupt bit */
        timer_interrupt_flag_clear(TIMER2,TIMER_INT_FLAG_CH0);

        if(0 == ccnumber){
            /* read channel 0 capture value */
            readvalue1 = timer_channel_capture_value_register_read(TIMER2, TIMER_CH_0);
            ccnumber = 1;
        }else if(1 == ccnumber){
            /* read channel 0 capture value */
            readvalue2 = timer_channel_capture_value_register_read(TIMER2, TIMER_CH_0);

            if(readvalue2 > readvalue1){
                count = (readvalue2 - readvalue1);
            }else{
                count = ((0xFFFF - readvalue1) + readvalue2);
            }

            fre = (float)1000000 / count;
            printf("the frequence is %d\n\r",(uint16_t)fre);

            ccnumber = 0;
        }
    }
}

