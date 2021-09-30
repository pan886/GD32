
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


#define  BKP_DATA_REG_NUM              42

void led_config(void);
void write_backup_register(uint16_t data);
uint32_t check_backup_register(uint16_t data);
uint16_t bkp0;
/*!
    \brief      main function
    \param[in]  none
    \param[out] none
    \retval     none
*/
int main(void)
{
    /* led configuration and turn on all led */
    led_config();
    /* PMU lock enable */
    rcu_periph_clock_enable(RCU_PMU);
    /* BKP clock enable */
    rcu_periph_clock_enable(RCU_BKPI);
    /* enable write access to the registers in backup domain */
    pmu_backup_write_enable();
    /* clear the bit flag of tamper event */
    bkp_flag_clear();

    write_backup_register(0x123);

    while(1){
    	bkp0 = BKP_DATA0_9(0);
    	if(bkp0 == BKP_DATA_GET(BKP_DATA0_9(0)))
    		gd_rvstar_led_on(LED2);
    }
}

/*!
    \brief      write data to backup DATAx registers
    \param[in]  data: the data to be written to backup data registers
      \arg        0x0000-0xFFFF
    \param[out] none
    \retval     none
*/
void write_backup_register(uint16_t data)
{
    uint32_t temp = 0;
    /* write data to backup registers */
    for (temp = 0; temp < BKP_DATA_REG_NUM; temp++){
        if(temp < 10){
            BKP_DATA0_9(temp) = data + (temp * 0x50);
        }else{
            BKP_DATA10_41(temp) = data + (temp * 0x50);
        }
    }
}

/*!
    \brief      check if the backup DATAx registers values are correct or not
    \param[in]  data: the data to be written to backup data registers
      \arg        0x0000-0xFFFF
    \param[out] none
    \retval     the number of data register
*/
uint32_t check_backup_register(uint16_t data)
{
    uint32_t temp = 0;
    /* check the data of backup registers */
    for(temp = 0; temp < BKP_DATA_REG_NUM; temp++){
        if(temp < 10){
            /* get data from data register 0-9 */
            if(data + (temp * 0x50) != BKP_DATA_GET(BKP_DATA0_9(temp))){
                return temp+1;
            }
        }else{
            /* get data from data register 10-41 */
            if(data + (temp * 0x50) != BKP_DATA_GET(BKP_DATA10_41(temp))){
                return temp+1;
            }
        }
    }
    return 0;
}

/*!
    \brief      configure led
    \param[in]  none
    \param[out] none
    \retval     none
*/
void led_config(void)
{
    gd_rvstar_led_init(LED1);
    gd_rvstar_led_init(LED2);
    gd_rvstar_led_init(LED3);

}
