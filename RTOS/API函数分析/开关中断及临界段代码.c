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


临界段函数

void vPortEnterCritical( void )//进入临界段
{
    portDISABLE_INTERRUPTS(); //关中断
    uxCriticalNesting++;//记录嵌套次数

    /* This is not the interrupt safe version of the enter critical function so
    assert() if it is being called from an interrupt context.  Only API
    functions that end in "FromISR" can be used in an interrupt.  Only assert if
    the critical nesting count is 1 to protect against recursive calls if the
    assert function also uses a critical section. */
    if( uxCriticalNesting == 1 )//防止递归调用
    {
        configASSERT( ( __ECLIC_GetMth() & portMTH_MASK ) == uxMaxSysCallMTH );
    }
}



void vPortExitCritical( void )//退出临界段
{
    configASSERT( uxCriticalNesting );
    uxCriticalNesting--;
    if( uxCriticalNesting == 0 )//保证了有多个临界段代码的时候不会因为某个临界段代码的退出而打乱其他临界段保护
    {
        portENABLE_INTERRUPTS();//开中断
    }
}

注意：uxCriticalNesting这个值static UBaseType_t uxCriticalNesting = 0xaaaaaaaa;
这个值在xPortStartScheduler函数中置0




