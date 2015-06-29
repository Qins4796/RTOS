  .syntax unified
  .cpu cortex-m4
  .fpu softvfp
  .thumb

.global  schedular
.global  SysTick_Handler
.extern  taskSwitch

.extern HAL_IncTick
.extern taskOneStack
.extern taskTwoStack
.extern CpuContext

  .section  .text.schedular
  .type  schedular, %function
schedular:
/*
 ldr    r0,  =#0xabababab
 ldr    r1,  =#0x11111111
 ldr    r2,  =#0x22222222
 ldr    r3,  =#0x33333333
 ldr    r4,  =#0x44444444
 ldr    r5,  =#0x55555555
 ldr    r6,  =#0x66666666
 ldr    r7,  =#0x77777777
 ldr    r8,  =#0x88888888
 ldr    r9,  =#0x99999999
 ldr    r10, =#0xaaaaaaaa
 ldr    r11, =#0xbbbbbbbb
 ldr    r12, =#0xcccccccc
 ldr    lr,  =#0xdddddddd
 push	{r0}
 b		 .
*/
.align 0
.type  SysTick_Handler, %function
 SysTick_Handler:
// Your Code Starts here :
// Push the rest of the register

push	{r4-r11}

//push	{r4}
//push	{r5}
//push	{r6}
//push	{r7}
//push	{r8}
//push	{r9}
//push	{r10}
//push	{r11}

b 		.

 //push {r7, lr}
 //add r7, sp, #0
 //bl HAL_IncTick
 //pop {r7, pc}