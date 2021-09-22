
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


int main(void)
{
    /* configure systick */
    //systick_config();
	//gd_rvstar_led_off
    /* configure LED2 and LED3 */
	gd_rvstar_led_init(LED2);
	gd_rvstar_led_init(LED3);

    /* turn off LED2 and LED3 */
	gd_rvstar_led_off(LED2);
	gd_rvstar_led_off(LED3);

    /* delay */
    delay_1ms(150);
    fwdgt_write_enable();
    fwdgt_config(0xfff,FWDGT_PSC_DIV8);
    fwdgt_enable();


    gd_rvstar_led_on(LED3);

    while(1){

			fwdgt_counter_reload();
    }
}





