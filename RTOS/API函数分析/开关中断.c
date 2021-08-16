开关中断函数为portENABLE_INTERRUPTS() 和portDISABLE_INTERRUPTS()
#define portDISABLE_INTERRUPTS()                vPortRaiseBASEPRI()
#define portENABLE_INTERRUPTS()                 vPortSetBASEPRI(0)

这些函数最终都调用以下这个函数
/**
 * \brief  Set Machine Mode Interrupt Level Threshold
 * \details
 * This function sets machine mode interrupt level threshold.
 * \param [in]  mth       Interrupt Level Threshold.
 * \sa
 * - \ref ECLIC_GetMth
 */
__STATIC_FORCEINLINE void __ECLIC_SetMth(uint8_t mth)
{
    ECLIC->MTH = mth;
}


可以看到，这个函数向mth寄存器写入值。
mth 寄存器是完整的 8 位寄存器，所有位均可读可写，软件可以通过写此寄存器配置目
标阈值。注意：该阈值表征的是一种级别（Level）的数字值。
ECLIC 最终仲裁出的中断的“级别（Level）数字值”只有高于“mth 寄存器中的值”，
该中断才能够被发送给处理器内核。

所以，如果要打开所有中断，那么将mth的阈值设为0即可。
如果要关闭中断，那么将mth的阈值设为255即可。