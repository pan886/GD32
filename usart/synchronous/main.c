
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


#include "gd32vf103.h"

#include <stdio.h>



uint16_t rx;

uint8_t txbuffer= {0xaF};
void usart_config(void);
void spi_config(void);
void led_init(void);
ErrStatus memory_compare(uint8_t* src, uint8_t* dst, uint16_t length);

/*!
    \brief      main function
    \param[in]  none
    \param[out] none
    \retval     none
*/
int main(void)
{
    /* initialize leds */
    led_init();
    /* turn off LED1~4 */
    gd_rvstar_led_off(LED1);
    gd_rvstar_led_off(LED2);
    gd_rvstar_led_off(LED3);


    /* configure USART */
    usart_config();

    /* configure SPI */
    spi_config();

    while(1){
    	usart_data_transmit(USART1, txbuffer);
    	rx = spi_i2s_data_receive(SPI0);
    }
}
/*!
    \brief      configure USART
    \param[in]  none
    \param[out] none
    \retval     none
*/
void usart_config(void)
{
    rcu_periph_clock_enable(RCU_GPIOA);
    rcu_periph_clock_enable(RCU_GPIOB);
    rcu_periph_clock_enable(RCU_USART0);
    rcu_periph_clock_enable(RCU_USART1);
    rcu_periph_clock_enable(RCU_AF);

    /* configure USART Tx as alternate function push-pull */
    //gpio_pin_remap_config(GPIO_USART0_REMAP,ENABLE);
    gpio_init(GPIOA, GPIO_MODE_AF_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_2|GPIO_PIN_4);
    gpio_init(GPIOA, GPIO_MODE_IN_FLOATING, GPIO_OSPEED_50MHZ, GPIO_PIN_3);

    /* configure USART synchronous mode */
    usart_synchronous_clock_enable(USART0);
    usart_synchronous_clock_config(USART0, USART_CLEN_EN, USART_CPH_2CK, USART_CPL_LOW);

    usart_baudrate_set(USART0, 115200);
    /* configure USART transmitter */
    usart_transmit_config(USART0, USART_TRANSMIT_ENABLE);
    /* configure USART receiver */
    usart_receive_config(USART0, USART_RECEIVE_ENABLE);
    /* enable USART */
    usart_enable(USART0);


    /* configure USART synchronous mode */
    usart_synchronous_clock_enable(USART1);
    usart_synchronous_clock_config(USART1, USART_CLEN_EN, USART_CPH_2CK, USART_CPL_HIGH);

    usart_baudrate_set(USART1, 115200);
    /* configure USART transmitter */
    usart_transmit_config(USART1, USART_TRANSMIT_ENABLE);
    /* configure USART receiver */
    usart_receive_config(USART1, USART_RECEIVE_ENABLE);
    /* enable USART */
    usart_enable(USART1);
}

/*!
    \brief      configure SPI
    \param[in]  none
    \param[out] none
    \retval     none
*/
void spi_config(void)
{
    spi_parameter_struct spi_init_parameter;
    rcu_periph_clock_enable(RCU_GPIOA);
    rcu_periph_clock_enable(RCU_SPI0);
    rcu_periph_clock_enable(RCU_AF);

    spi_i2s_deinit(SPI0);

    gpio_init(GPIOA, GPIO_MODE_AF_PP, GPIO_OSPEED_10MHZ, GPIO_PIN_5 | GPIO_PIN_6);
    gpio_init(GPIOA, GPIO_MODE_IN_FLOATING, GPIO_OSPEED_10MHZ, GPIO_PIN_7);

    /* configure SPI0 */
    spi_init_parameter.device_mode = SPI_SLAVE;
    spi_init_parameter.trans_mode = SPI_TRANSMODE_FULLDUPLEX;
    spi_init_parameter.frame_size = SPI_FRAMESIZE_8BIT;
    spi_init_parameter.nss = SPI_NSS_SOFT;
    spi_init_parameter.endian = SPI_ENDIAN_LSB;
    spi_init_parameter.clock_polarity_phase = SPI_CK_PL_HIGH_PH_2EDGE;
    spi_init_parameter.prescale = SPI_PSC_32;
    spi_init(SPI0, &spi_init_parameter);

    /* SPI0 enable */
    spi_enable(SPI0);
}

/*!
    \brief      initialize leds
    \param[in]  none
    \param[out] none
    \retval     none
*/
void led_init(void)
{
    gd_rvstar_led_init(LED1);
    gd_rvstar_led_init(LED2);
    gd_rvstar_led_init(LED3);


}

/*!
    \brief      memory compare function
    \param[in]  src: source data
    \param[in]  dst: destination data
    \param[in]  length: the compare data length
    \param[out] none
    \retval     ErrStatus: ERROR or SUCCESS
*/
ErrStatus memory_compare(uint8_t* src, uint8_t* dst, uint16_t length)
{
    while(length--){
        if(*src++ != *dst++){
            return ERROR;
        }
    }
    return SUCCESS;
}
