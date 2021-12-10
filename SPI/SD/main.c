
#include "gd32vf103.h"
#include "gd32vf103_timer.h"
#include "gd32vf103_gpio.h"
#include "gd32vf103_usart.h"
#include "gd32vf103_spi.h"
#include <stdio.h>
#include "gd32vf103_dac.h"
#include "gd32vf103_i2c.h"
#include "gd32vf103v_rvstar.h"
#include "n200_func.h"


#include "gd32vf103_bkp.h"
#include "gd32vf103_dma.h"

#include "gd32vf103.h"

#include "nuclei_sdk_soc.h"
#include "gd32vf103v_rvstar.h"
#include "gd32vf103.h"
#include "gd32vf103_exmc.h"

#include "gd32vf103_rcu.h"
#include "gui_28.h"
#include "gd32vf103.h"
#include "exmc_lcd.h"
#include "ili9320.h"

#include "lcd.h"
#include "touch.h"
#include "ugui.h"
#include "ff.h"
#include "exfuns.h"
#include "malloc.h"
#define  ARRAYSIZE         10

uint32_t send_n = 0, receive_n = 0;
uint8_t spi0_send_array[ARRAYSIZE] = {0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, 0xAA};
uint8_t spi2_send_array[ARRAYSIZE] = {0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA};
uint8_t spi0_receive_array[ARRAYSIZE];
uint8_t spi2_receive_array[ARRAYSIZE];
ErrStatus memory_compare(uint8_t* src, uint8_t* dst, uint8_t length);

void rcu_config(void);
void gpio_config(void);
void spi_config(void);
u32 sd_size = 0;
u32 rongliang =0;
u32 zongliangliang;
u32 shengyu;
/*!
    \brief      main function
    \param[in]  none
    \param[out] none
    \retval     none
*/
int newbi= 0;
	u32 total,freel;
int main(void)
{
    /* initialize the LEDs */
	gd_rvstar_led_init(LED1);
    gd_rvstar_led_init(LED2);
    gd_rvstar_led_init(LED3);
    /* peripheral clock enable */
    rcu_config();
    /* GPIO configure */
    gpio_config();
    /* SPI configure */
    spi_config();
    SD_SPI_SpeedLow();
    //();
    /* SPI enable */

    spi_enable(SPI1);

	//my_mem_init(SRAMIN);		//初始化内部内存池
    /* wait for transmit complete */



    newbi = SD_Initialize();

    while(SD_Initialize())//检测不到SD卡
    {
    	 gd_rvstar_led_on(LED3);

   }


    sd_size=SD_GetSectorCount();//得到扇区数

    rongliang = sd_size>>11;
    while(1)
    	{


    	  delay_ms(5);
    	}
}

/*!
    \brief      configure different peripheral clocks
    \param[in]  none
    \param[out] none
    \retval     none
*/
void rcu_config(void)
{
    rcu_periph_clock_enable(RCU_GPIOA);
    rcu_periph_clock_enable(RCU_GPIOB);
    rcu_periph_clock_enable(RCU_GPIOC);
    rcu_periph_clock_enable(RCU_AF);
    rcu_periph_clock_enable(RCU_SPI0);
    rcu_periph_clock_enable(RCU_SPI2);
    rcu_periph_clock_enable(RCU_SPI1);
}

/*!
    \brief      configure the GPIO peripheral
    \param[in]  none
    \param[out] none
    \retval     none
*/
void gpio_config(void)
{
    /* SPI0 GPIO config:SCK/PA5, MISO/PA6, MOSI/PA7 */
    gpio_init(GPIOA, GPIO_MODE_AF_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_5 | GPIO_PIN_7);
    gpio_init(GPIOA, GPIO_MODE_IN_FLOATING, GPIO_OSPEED_50MHZ, GPIO_PIN_6);

    /* SPI2 GPIO config:SCK/PC10, MISO/PC11, MOSI/PC12 */
    gpio_pin_remap_config(GPIO_SPI2_REMAP, ENABLE);
    gpio_init(GPIOC, GPIO_MODE_IN_FLOATING, GPIO_OSPEED_50MHZ, GPIO_PIN_10 | GPIO_PIN_12);
    gpio_init(GPIOC, GPIO_MODE_AF_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_11);

    /*SPI1 GPIO config:sck/PB13 ,MISO/PB14 ,MOSI/PB15 */
    gpio_init(GPIOB,GPIO_MODE_AF_PP,GPIO_OSPEED_50MHZ,GPIO_PIN_13 | GPIO_PIN_15);
    gpio_init(GPIOB, GPIO_MODE_IN_FLOATING, GPIO_OSPEED_50MHZ, GPIO_PIN_14);

}

/*!
    \brief      configure the SPI peripheral
    \param[in]  none
    \param[out] none
    \retval     none
*/
void spi_config(void)
{

    /* deinitilize SPI and the parameters */
    spi_i2s_deinit(SPI0);
    spi_i2s_deinit(SPI2);
    spi_struct_para_init(&spi_init_struct);


    /* SPI0 parameter config */
    spi_init_struct.trans_mode           = SPI_TRANSMODE_FULLDUPLEX;
    spi_init_struct.device_mode          = SPI_MASTER;
    spi_init_struct.frame_size           = SPI_FRAMESIZE_8BIT;
    spi_init_struct.clock_polarity_phase = SPI_CK_PL_HIGH_PH_2EDGE;
    spi_init_struct.nss                  = SPI_NSS_SOFT;
    spi_init_struct.prescale             = SPI_PSC_8;
    spi_init_struct.endian               = SPI_ENDIAN_MSB;
    spi_init(SPI0, &spi_init_struct);

    spi_init(SPI1, &spi_init_struct);//add spi1




}

/*!
    \brief      memory compare function
    \param[in]  src: source data pointer
    \param[in]  dst: destination data pointer
    \param[in]  length: the compare data length
    \param[out] none
    \retval     ErrStatus: ERROR or SUCCESS
*/
ErrStatus memory_compare(uint8_t* src, uint8_t* dst, uint8_t length)
{
    while(length--){
        if(*src++ != *dst++)
            return ERROR;
    }
    return SUCCESS;
}
