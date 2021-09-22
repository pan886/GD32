
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
#include <string.h>

#include <stdio.h>

#define TRANSFER_NUM                     0x400                     /* configuration value in bytes */
#define FMC_PAGE_SIZE                    ((uint16_t)0x800)
#define BANK0_WRITE_START_ADDR           ((uint32_t)0x08004000)

void rcu_config(void);
void config_clic_irqs (void);
void led_config(void);

__IO uint32_t g_dmacomplete_flag = 0;
uint8_t g_destbuf[TRANSFER_NUM];
const uint32_t transdata = 0x3210ABCD;
fmc_state_enum fmcstatus = FMC_READY;

/*!
    \brief      main function
    \param[in]  none
    \param[out] none
    \retval     none
*/
int main(void)
{
    uint32_t i, count;
    uint32_t *ptrd;
    uint32_t address = 0x00;
    ErrStatus access_flag = SUCCESS;
    dma_parameter_struct dma_init_struct;
    uint32_t wperror = 0;

    /* system clocks configuration */
    rcu_config();
    /* CLIC configuration */
    config_clic_irqs();
    /* LED configuration */
    led_config() ;
    /* unlock the flash bank1 program erase controller */
    fmc_unlock();

    /* define the number of page to be erased */
    count = TRANSFER_NUM / FMC_PAGE_SIZE;
    /* clear all pending flags */
    fmc_flag_clear(FMC_FLAG_PGERR | FMC_FLAG_WPERR | FMC_FLAG_END);

    /* erase the flash pages */
    for(i = 0; i <= count; i++){
        fmcstatus = fmc_page_erase(BANK0_WRITE_START_ADDR + (FMC_PAGE_SIZE * i));
        wperror += (fmcstatus == FMC_WPERR);
        fmc_flag_clear(FMC_FLAG_PGERR | FMC_FLAG_WPERR | FMC_FLAG_END);
    }

    if(wperror != 0){
        while(1);
    }

    /* unlock the flash bank1 program erase controller */
    fmc_lock();

    ptrd = (uint32_t*)BANK0_WRITE_START_ADDR;
    count = TRANSFER_NUM / sizeof(*ptrd);

    for(i = 0; i < count; i++){
        if(0xFFFFFFFF != *ptrd){
            access_flag = ERROR;
            break;
        }
        ptrd++;
    }

    if(ERROR == access_flag){
        while(1);
    }

    /* unlock the flash bank1 program erase controller */
    fmc_unlock();
    /* clear all pending flags */
    fmc_flag_clear(FMC_FLAG_PGERR | FMC_FLAG_WPERR | FMC_FLAG_END);

    /* program flash bank1 */
    address = BANK0_WRITE_START_ADDR;
    wperror = 0;
    count = BANK0_WRITE_START_ADDR + TRANSFER_NUM;

    while(address < count){
        fmcstatus = fmc_word_program(address, transdata);
        address = address + 4;
        wperror += (FMC_WPERR == fmcstatus);
        fmc_flag_clear(FMC_FLAG_PGERR | FMC_FLAG_WPERR | FMC_FLAG_END);
    }

    if(wperror != 0){
        while(1);
    }

    fmc_lock();

    memset(g_destbuf ,0 ,TRANSFER_NUM);

    /* DMA0 channel0 initialize */
    dma_deinit(DMA0, DMA_CH0);
    dma_struct_para_init(&dma_init_struct);

    dma_init_struct.direction = DMA_PERIPHERAL_TO_MEMORY;
    dma_init_struct.memory_addr = (uint32_t)g_destbuf;
    dma_init_struct.memory_inc = DMA_MEMORY_INCREASE_ENABLE;
    dma_init_struct.memory_width = DMA_MEMORY_WIDTH_8BIT;
    dma_init_struct.number = TRANSFER_NUM;
    dma_init_struct.periph_addr = (uint32_t)BANK0_WRITE_START_ADDR;
    dma_init_struct.periph_inc = DMA_PERIPH_INCREASE_ENABLE;
    dma_init_struct.periph_width = DMA_PERIPHERAL_WIDTH_8BIT;
    dma_init_struct.priority = DMA_PRIORITY_ULTRA_HIGH;
    dma_init(DMA0, DMA_CH0, &dma_init_struct);
    /* DMA0 channel0 mode configuration */
    dma_circulation_disable(DMA0, DMA_CH0);
    dma_memory_to_memory_enable(DMA0, DMA_CH0);
    /* DMA0 channel0 interrupt configuration */
    dma_interrupt_enable(DMA0, DMA_CH0, DMA_INT_FTF);
    /* enable DMA0 transfer */
    dma_channel_enable(DMA0, DMA_CH0);

    /* wait DMA interrupt */
    while(0 == g_dmacomplete_flag);

    /* compare destdata with transdata */
    ptrd = (uint32_t *)g_destbuf;
    count = TRANSFER_NUM / sizeof(*ptrd);

    for(i = 0; i < count; i++){
        if(transdata != *ptrd){
            access_flag = ERROR;
            break;
        }
        ptrd++;
    }

    /* transfer success */


    while(1){
    	 if(access_flag != ERROR){
    	        gd_rvstar_led_on(LED1);
    	        gd_rvstar_led_on(LED2);
    	        gd_rvstar_led_on(LED3);
    	        //gd_rvstar_led_on(LED4);
    	     }else{
    	        gd_rvstar_led_on(LED1);
    	        gd_rvstar_led_on(LED3);
    	    }
    }
}

/*!
    \brief      configure LED
    \param[in]  none
    \param[out] none
    \retval     none
*/
void led_config(void)
{
    gd_rvstar_led_init(LED1);
    gd_rvstar_led_init(LED2);
    gd_rvstar_led_init(LED3);
  // gd_eval_led_init(LED4);

    /* LED off */
    gd_rvstar_led_off(LED1);
    gd_rvstar_led_off(LED2);
    gd_rvstar_led_off(LED3);
   // gd_rvstar_led_off(LED4);
}

/*!
    \brief      configure the different system clocks
    \param[in]  none
    \param[out] none
    \retval     none
*/
void rcu_config(void)
{
    /* enable DMA clock */
    rcu_periph_clock_enable(RCU_DMA0);
}

/*!
    \brief      configure the CLIC
    \param[in]  none
    \param[out] none
    \retval     none
*/
void config_clic_irqs (void)
{
    eclic_global_interrupt_enable();
    eclic_priority_group_set(ECLIC_PRIGROUP_LEVEL3_PRIO1);
    eclic_irq_enable(DMA0_Channel0_IRQn, 1, 1);

}



/*!
    \brief      this function handles DMA0_Channel0_IRQHandler interrupt
    \param[in]  none
    \param[out] none
    \retval     none
*/
void DMA0_Channel0_IRQHandler(void)
{
    if(dma_interrupt_flag_get(DMA0, DMA_CH0, DMA_INT_FLAG_FTF)){
        g_dmacomplete_flag = 1;
        dma_interrupt_flag_clear(DMA0, DMA_CH0, DMA_INT_FLAG_G);
    }
}
