#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_byte_model.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/system_config/default/system_interrupt_a.S ../src/system_config/default/rtos_hooks.c ../src/main.c ../src/uartrcv.c ../src/uarttrans.c ../src/uartloopback.c ../src/serialfsm.c ../src/serialresponds.c ../src/heartbeat.c ../src/debug.c ../../../../../../../microchip/harmony/v1_08_01/framework/osal/src/osal_freertos.c ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon.c ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../../../microchip/harmony/v1_08_01/framework/system/int/src/sys_int_pic32.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/croutine.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/list.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/queue.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/tasks.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/timers.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/event_groups.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/uartrcv.o ${OBJECTDIR}/_ext/1360937237/uarttrans.o ${OBJECTDIR}/_ext/1360937237/uartloopback.o ${OBJECTDIR}/_ext/1360937237/serialfsm.o ${OBJECTDIR}/_ext/1360937237/serialresponds.o ${OBJECTDIR}/_ext/1360937237/heartbeat.o ${OBJECTDIR}/_ext/1360937237/debug.o ${OBJECTDIR}/_ext/139468103/osal_freertos.o ${OBJECTDIR}/_ext/1071266765/sys_devcon.o ${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/522947079/sys_int_pic32.o ${OBJECTDIR}/_ext/598611465/heap_1.o ${OBJECTDIR}/_ext/1026174026/port.o ${OBJECTDIR}/_ext/1026174026/port_asm.o ${OBJECTDIR}/_ext/793396116/croutine.o ${OBJECTDIR}/_ext/793396116/list.o ${OBJECTDIR}/_ext/793396116/queue.o ${OBJECTDIR}/_ext/793396116/tasks.o ${OBJECTDIR}/_ext/793396116/timers.o ${OBJECTDIR}/_ext/793396116/event_groups.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/uartrcv.o.d ${OBJECTDIR}/_ext/1360937237/uarttrans.o.d ${OBJECTDIR}/_ext/1360937237/uartloopback.o.d ${OBJECTDIR}/_ext/1360937237/serialfsm.o.d ${OBJECTDIR}/_ext/1360937237/serialresponds.o.d ${OBJECTDIR}/_ext/1360937237/heartbeat.o.d ${OBJECTDIR}/_ext/1360937237/debug.o.d ${OBJECTDIR}/_ext/139468103/osal_freertos.o.d ${OBJECTDIR}/_ext/1071266765/sys_devcon.o.d ${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/522947079/sys_int_pic32.o.d ${OBJECTDIR}/_ext/598611465/heap_1.o.d ${OBJECTDIR}/_ext/1026174026/port.o.d ${OBJECTDIR}/_ext/1026174026/port_asm.o.d ${OBJECTDIR}/_ext/793396116/croutine.o.d ${OBJECTDIR}/_ext/793396116/list.o.d ${OBJECTDIR}/_ext/793396116/queue.o.d ${OBJECTDIR}/_ext/793396116/tasks.o.d ${OBJECTDIR}/_ext/793396116/timers.o.d ${OBJECTDIR}/_ext/793396116/event_groups.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/uartrcv.o ${OBJECTDIR}/_ext/1360937237/uarttrans.o ${OBJECTDIR}/_ext/1360937237/uartloopback.o ${OBJECTDIR}/_ext/1360937237/serialfsm.o ${OBJECTDIR}/_ext/1360937237/serialresponds.o ${OBJECTDIR}/_ext/1360937237/heartbeat.o ${OBJECTDIR}/_ext/1360937237/debug.o ${OBJECTDIR}/_ext/139468103/osal_freertos.o ${OBJECTDIR}/_ext/1071266765/sys_devcon.o ${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/522947079/sys_int_pic32.o ${OBJECTDIR}/_ext/598611465/heap_1.o ${OBJECTDIR}/_ext/1026174026/port.o ${OBJECTDIR}/_ext/1026174026/port_asm.o ${OBJECTDIR}/_ext/793396116/croutine.o ${OBJECTDIR}/_ext/793396116/list.o ${OBJECTDIR}/_ext/793396116/queue.o ${OBJECTDIR}/_ext/793396116/tasks.o ${OBJECTDIR}/_ext/793396116/timers.o ${OBJECTDIR}/_ext/793396116/event_groups.o

# Source Files
SOURCEFILES=../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_byte_model.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/system_config/default/system_interrupt_a.S ../src/system_config/default/rtos_hooks.c ../src/main.c ../src/uartrcv.c ../src/uarttrans.c ../src/uartloopback.c ../src/serialfsm.c ../src/serialresponds.c ../src/heartbeat.c ../src/debug.c ../../../../../../../microchip/harmony/v1_08_01/framework/osal/src/osal_freertos.c ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon.c ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../../../microchip/harmony/v1_08_01/framework/system/int/src/sys_int_pic32.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/croutine.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/list.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/queue.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/tasks.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/timers.c ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/event_groups.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o: ../src/system_config/default/system_interrupt_a.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.ok ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d" "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d"  -o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ../src/system_config/default/system_interrupt_a.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/_ext/1026174026/port_asm.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1026174026" 
	@${RM} ${OBJECTDIR}/_ext/1026174026/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026174026/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1026174026/port_asm.o.ok ${OBJECTDIR}/_ext/1026174026/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1026174026/port_asm.o.d" "${OBJECTDIR}/_ext/1026174026/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1026174026/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1026174026/port_asm.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1026174026/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
else
${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o: ../src/system_config/default/system_interrupt_a.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.ok ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d" "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d"  -o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ../src/system_config/default/system_interrupt_a.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/1026174026/port_asm.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1026174026" 
	@${RM} ${OBJECTDIR}/_ext/1026174026/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026174026/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1026174026/port_asm.o.ok ${OBJECTDIR}/_ext/1026174026/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1026174026/port_asm.o.d" "${OBJECTDIR}/_ext/1026174026/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1026174026/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1026174026/port_asm.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1026174026/port_asm.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/327000265/drv_usart_static.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_byte_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_byte_model.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/rtos_hooks.o: ../src/system_config/default/rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ../src/system_config/default/rtos_hooks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/uartrcv.o: ../src/uartrcv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uartrcv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uartrcv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uartrcv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/uartrcv.o.d" -o ${OBJECTDIR}/_ext/1360937237/uartrcv.o ../src/uartrcv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/uarttrans.o: ../src/uarttrans.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uarttrans.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uarttrans.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uarttrans.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/uarttrans.o.d" -o ${OBJECTDIR}/_ext/1360937237/uarttrans.o ../src/uarttrans.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/uartloopback.o: ../src/uartloopback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uartloopback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uartloopback.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uartloopback.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/uartloopback.o.d" -o ${OBJECTDIR}/_ext/1360937237/uartloopback.o ../src/uartloopback.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/serialfsm.o: ../src/serialfsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/serialfsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/serialfsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/serialfsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/serialfsm.o.d" -o ${OBJECTDIR}/_ext/1360937237/serialfsm.o ../src/serialfsm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/serialresponds.o: ../src/serialresponds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/serialresponds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/serialresponds.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/serialresponds.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/serialresponds.o.d" -o ${OBJECTDIR}/_ext/1360937237/serialresponds.o ../src/serialresponds.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/heartbeat.o: ../src/heartbeat.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/heartbeat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/heartbeat.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/heartbeat.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/heartbeat.o.d" -o ${OBJECTDIR}/_ext/1360937237/heartbeat.o ../src/heartbeat.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/debug.o: ../src/debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/debug.o.d" -o ${OBJECTDIR}/_ext/1360937237/debug.o ../src/debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/139468103/osal_freertos.o: ../../../../../../../microchip/harmony/v1_08_01/framework/osal/src/osal_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/139468103" 
	@${RM} ${OBJECTDIR}/_ext/139468103/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/139468103/osal_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/139468103/osal_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/139468103/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/139468103/osal_freertos.o ../../../../../../../microchip/harmony/v1_08_01/framework/osal/src/osal_freertos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1071266765/sys_devcon.o: ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1071266765" 
	@${RM} ${OBJECTDIR}/_ext/1071266765/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071266765/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1071266765/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1071266765/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1071266765/sys_devcon.o ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o: ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1071266765" 
	@${RM} ${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/522947079/sys_int_pic32.o: ../../../../../../../microchip/harmony/v1_08_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/522947079" 
	@${RM} ${OBJECTDIR}/_ext/522947079/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/522947079/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/522947079/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/522947079/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/522947079/sys_int_pic32.o ../../../../../../../microchip/harmony/v1_08_01/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/598611465/heap_1.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/598611465" 
	@${RM} ${OBJECTDIR}/_ext/598611465/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/598611465/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/598611465/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/598611465/heap_1.o.d" -o ${OBJECTDIR}/_ext/598611465/heap_1.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1026174026/port.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1026174026" 
	@${RM} ${OBJECTDIR}/_ext/1026174026/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026174026/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1026174026/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1026174026/port.o.d" -o ${OBJECTDIR}/_ext/1026174026/port.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/croutine.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/croutine.o.d" -o ${OBJECTDIR}/_ext/793396116/croutine.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/list.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/list.o.d" -o ${OBJECTDIR}/_ext/793396116/list.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/queue.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/queue.o.d" -o ${OBJECTDIR}/_ext/793396116/queue.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/tasks.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/tasks.o.d" -o ${OBJECTDIR}/_ext/793396116/tasks.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/timers.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/timers.o.d" -o ${OBJECTDIR}/_ext/793396116/timers.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/event_groups.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/event_groups.o.d" -o ${OBJECTDIR}/_ext/793396116/event_groups.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/327000265/drv_usart_static.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_byte_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_byte_model.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_byte_model.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/rtos_hooks.o: ../src/system_config/default/rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ../src/system_config/default/rtos_hooks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/uartrcv.o: ../src/uartrcv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uartrcv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uartrcv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uartrcv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/uartrcv.o.d" -o ${OBJECTDIR}/_ext/1360937237/uartrcv.o ../src/uartrcv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/uarttrans.o: ../src/uarttrans.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uarttrans.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uarttrans.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uarttrans.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/uarttrans.o.d" -o ${OBJECTDIR}/_ext/1360937237/uarttrans.o ../src/uarttrans.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/uartloopback.o: ../src/uartloopback.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uartloopback.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uartloopback.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uartloopback.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/uartloopback.o.d" -o ${OBJECTDIR}/_ext/1360937237/uartloopback.o ../src/uartloopback.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/serialfsm.o: ../src/serialfsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/serialfsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/serialfsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/serialfsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/serialfsm.o.d" -o ${OBJECTDIR}/_ext/1360937237/serialfsm.o ../src/serialfsm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/serialresponds.o: ../src/serialresponds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/serialresponds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/serialresponds.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/serialresponds.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/serialresponds.o.d" -o ${OBJECTDIR}/_ext/1360937237/serialresponds.o ../src/serialresponds.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/heartbeat.o: ../src/heartbeat.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/heartbeat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/heartbeat.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/heartbeat.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/heartbeat.o.d" -o ${OBJECTDIR}/_ext/1360937237/heartbeat.o ../src/heartbeat.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/debug.o: ../src/debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/debug.o.d" -o ${OBJECTDIR}/_ext/1360937237/debug.o ../src/debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/139468103/osal_freertos.o: ../../../../../../../microchip/harmony/v1_08_01/framework/osal/src/osal_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/139468103" 
	@${RM} ${OBJECTDIR}/_ext/139468103/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/139468103/osal_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/139468103/osal_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/139468103/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/139468103/osal_freertos.o ../../../../../../../microchip/harmony/v1_08_01/framework/osal/src/osal_freertos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1071266765/sys_devcon.o: ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1071266765" 
	@${RM} ${OBJECTDIR}/_ext/1071266765/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071266765/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1071266765/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1071266765/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1071266765/sys_devcon.o ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o: ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1071266765" 
	@${RM} ${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1071266765/sys_devcon_pic32mx.o ../../../../../../../microchip/harmony/v1_08_01/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/522947079/sys_int_pic32.o: ../../../../../../../microchip/harmony/v1_08_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/522947079" 
	@${RM} ${OBJECTDIR}/_ext/522947079/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/522947079/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/522947079/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/522947079/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/522947079/sys_int_pic32.o ../../../../../../../microchip/harmony/v1_08_01/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/598611465/heap_1.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/598611465" 
	@${RM} ${OBJECTDIR}/_ext/598611465/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/598611465/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/598611465/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/598611465/heap_1.o.d" -o ${OBJECTDIR}/_ext/598611465/heap_1.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1026174026/port.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1026174026" 
	@${RM} ${OBJECTDIR}/_ext/1026174026/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026174026/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1026174026/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1026174026/port.o.d" -o ${OBJECTDIR}/_ext/1026174026/port.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/croutine.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/croutine.o.d" -o ${OBJECTDIR}/_ext/793396116/croutine.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/list.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/list.o.d" -o ${OBJECTDIR}/_ext/793396116/list.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/queue.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/queue.o.d" -o ${OBJECTDIR}/_ext/793396116/queue.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/tasks.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/tasks.o.d" -o ${OBJECTDIR}/_ext/793396116/tasks.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/timers.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/timers.o.d" -o ${OBJECTDIR}/_ext/793396116/timers.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/793396116/event_groups.o: ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793396116" 
	@${RM} ${OBJECTDIR}/_ext/793396116/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/793396116/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793396116/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../../../../microchip/harmony/v1_08_01/framework" -I"../src/system_config/default/framework" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/793396116/event_groups.o.d" -o ${OBJECTDIR}/_ext/793396116/event_groups.o ../../../../../../../microchip/harmony/v1_08_01/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../microchip/harmony/v1_08_01/bin/framework/peripheral/PIC32MX795F512L_peripherals.a ../../../../../../../microchip/harmony/v1_08_01/framework/tcpip/src/crypto/aes_pic32mx.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../../../../microchip/harmony/v1_08_01/bin/framework/peripheral/PIC32MX795F512L_peripherals.a ../../../../../../../microchip/harmony/v1_08_01/framework/tcpip/src/crypto/aes_pic32mx.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../microchip/harmony/v1_08_01/bin/framework/peripheral/PIC32MX795F512L_peripherals.a ../../../../../../../microchip/harmony/v1_08_01/framework/tcpip/src/crypto/aes_pic32mx.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/main.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../../../../microchip/harmony/v1_08_01/bin/framework/peripheral/PIC32MX795F512L_peripherals.a ../../../../../../../microchip/harmony/v1_08_01/framework/tcpip/src/crypto/aes_pic32mx.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/main.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
