
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


#define FMC_PAGE_SIZE           ((uint16_t)0x400U)
#define FMC_WRITE_START_ADDR    ((uint32_t)0x08004000U)
#define FMC_WRITE_END_ADDR      ((uint32_t)0x08004800U)

uint32_t *ptrd;
uint32_t address = 0x00;
uint32_t data0   = 0x01234567U;
led_typedef_enum led_num = LED1;

/* calculate the num of page to be programmed/erased */
uint32_t page_num = (FMC_WRITE_END_ADDR - FMC_WRITE_START_ADDR) / FMC_PAGE_SIZE;
/* calculate the num of page to be programmed/erased */
uint32_t word_num = ((FMC_WRITE_END_ADDR - FMC_WRITE_START_ADDR) >> 2);

/*!
    \brief      erase fmc pages from FMC_WRITE_START_ADDR to FMC_WRITE_END_ADDR
    \param[in]  none
    \param[out] none
    \retval     none
*/
void fmc_erase_pages(void)
{
    uint32_t erase_counter;

    /* unlock the flash program/erase controller */
    fmc_unlock();

    /* clear all pending flags */
    fmc_flag_clear(FMC_FLAG_END);
    fmc_flag_clear(FMC_FLAG_WPERR);
    fmc_flag_clear(FMC_FLAG_PGERR);

    /* erase the flash pages */
    for(erase_counter = 0; erase_counter < page_num; erase_counter++){
        fmc_page_erase(FMC_WRITE_START_ADDR + (FMC_PAGE_SIZE * erase_counter));
        fmc_flag_clear(FMC_FLAG_END);
        fmc_flag_clear(FMC_FLAG_WPERR);
        fmc_flag_clear(FMC_FLAG_PGERR);
    }

    /* lock the main FMC after the erase operation */
    fmc_lock();
}

/*!
    \brief      program fmc word by word from FMC_WRITE_START_ADDR to FMC_WRITE_END_ADDR
    \param[in]  none
    \param[out] none
    \retval     none
*/
void fmc_program(void)
{
    /* unlock the flash program/erase controller */
    fmc_unlock();

    address = FMC_WRITE_START_ADDR;

    /* program flash */
    while(address < FMC_WRITE_END_ADDR){
        fmc_word_program(address, data0);
        address += 4;
        fmc_flag_clear(FMC_FLAG_END);
        fmc_flag_clear(FMC_FLAG_WPERR);
        fmc_flag_clear(FMC_FLAG_PGERR);
    }

    /* lock the main FMC after the program operation */
    fmc_lock();
}

/*!
    \brief      check fmc erase result
    \param[in]  none
    \param[out] none
    \retval     none
*/
void fmc_erase_pages_check(void)
{
    uint32_t i;

    ptrd = (uint32_t *)FMC_WRITE_START_ADDR;

    /* check flash whether has been erased */
    for(i = 0; i < word_num; i++){
        if(0xFFFFFFFF != (*ptrd)){
            led_num = LED2;
            gd_rvstar_led_on(led_num);
            break;
        }else{
            ptrd++;
        }
    }
}

/*!
    \brief      check fmc program result
    \param[in]  none
    \param[out] none
    \retval     none
*/
void fmc_program_check(void)
{
    uint32_t i;

    ptrd = (uint32_t *)FMC_WRITE_START_ADDR;

    /* check flash whether has been programmed */
    for(i = 0; i < word_num; i++){
        if((*ptrd) != data0){
            led_num = LED3;
            gd_rvstar_led_on(led_num);
            break;
        }else{
            ptrd++;
        }
    }
}

/*!
    \brief      main function
    \param[in]  none
    \param[out] none
    \retval     none
*/
int main(void)
{
    /* initialize led on the board */
    gd_rvstar_led_init(LED2);
    gd_rvstar_led_init(LED3);
    gd_rvstar_led_init(LED1);

    /* step1: erase pages and check if it is successful. if not, light the LED2 */
    fmc_erase_pages();
    fmc_erase_pages_check();

    /* step2: program and check if it is successful. if not, light the LED3 */
    fmc_program();
    fmc_program_check();

    /* if all the operations are successful, light the LED1 */
    gd_rvstar_led_on(led_num);

    while(1);
}

