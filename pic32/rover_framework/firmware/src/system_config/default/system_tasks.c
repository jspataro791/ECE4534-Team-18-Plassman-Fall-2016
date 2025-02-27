/*******************************************************************************
 System Tasks File

  File Name:
    system_tasks.c

  Summary:
    This file contains source code necessary to maintain system's polled state
    machines.

  Description:
    This file contains source code necessary to maintain system's polled state
    machines.  It implements the "SYS_Tasks" function that calls the individual
    "Tasks" functions for all the MPLAB Harmony modules in the system.

  Remarks:
    This file requires access to the systemObjects global data structure that
    contains the object handles to all MPLAB Harmony module objects executing
    polled in the system.  These handles are passed into the individual module
    "Tasks" functions to identify the instance of the module to maintain.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2015 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "system_config.h"
#include "system_definitions.h"
#include "tsk_wifly_rx.h"
#include "tsk_wifly_tx.h"
#include "tsk_lfa_rx.h"
#include "tsk_rvrstatus.h"
#include "debug.h"
#include "tsk_motorctrl.h"

// *****************************************************************************
// *****************************************************************************
// Section: Local Prototypes
// *****************************************************************************
// *****************************************************************************



static void _SYS_Tasks(void);
static void _WIFLY_RX_Tasks(void);
static void _WIFLY_TX_Tasks(void);
static void _LFA_RX_Tasks(void);
static void _RVRSTATUS_Tasks(void);
static void _DEBUG_Tasks(void);
static void _MOTOR_CTRL_Tasks(void);
static void _LFA_DECISION_Tasks(void);


// *****************************************************************************
// *****************************************************************************
// Section: System "Tasks" Routine
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void SYS_Tasks ( void )

  Remarks:
    See prototype in system/common/sys_module.h.
 */

void SYS_Tasks(void) {
    //    /* Create OS Thread for Sys Tasks. */
    //    xTaskCreate((TaskFunction_t) _SYS_Tasks,
    //                "Sys Tasks",
    //                1024, NULL, 1, NULL);

    /* Create OS Thread for WIFLY_RX Tasks. */
    xTaskCreate((TaskFunction_t) _WIFLY_RX_Tasks,
            "WIFLY_RX Tasks",
            1024, NULL, 4, NULL);

    /* Create OS Thread for WIFLY_TX Tasks. */
    xTaskCreate((TaskFunction_t) _WIFLY_TX_Tasks,
            "WIFLY_TX Tasks",
            1024, NULL, 4, NULL);

    /* Create OS Thread for LFA_RX Tasks. */
    xTaskCreate((TaskFunction_t) _LFA_RX_Tasks,
            "LFA_RX Tasks",
            1024, NULL, 1, NULL);
    
 
    /* Create OS Thread for RVRSTATUS Tasks. */
    xTaskCreate((TaskFunction_t) _RVRSTATUS_Tasks,
            "RVRSTATUS Tasks",
            1024, NULL, 4, NULL);

    /* Create OS Thread for DEBUG Tasks. */
    xTaskCreate((TaskFunction_t) _DEBUG_Tasks,
            "DEBUG Tasks",
            1024, NULL, 4, NULL);

    /* Create OS Thread for MOTOR CONTROL Tasks. */
    xTaskCreate((TaskFunction_t) _MOTOR_CTRL_Tasks,
            "MOTOR CTRL Tasks",
            1024, NULL, 1, NULL);
    
    /* Create OS Thread for LFA DECISION Tasks. */
    xTaskCreate((TaskFunction_t) _LFA_DECISION_Tasks,
            "LFA DECISION Tasks",
            1024, NULL, 1, NULL);

    /* post GPIO status */
    sendGPIOStatus(STAT_SYS_TASK_CREATE);

    /**************
     * Start RTOS * 
     **************/
    vTaskStartScheduler(); /* This function never returns. */
}

/*******************************************************************************
  Function:
    void _SYS_Tasks ( void )

  Summary:
    Maintains state machines of system modules.
 */
static void _SYS_Tasks(void) {
    while (1) {
        /* Maintain system services */
        SYS_DEVCON_Tasks(sysObj.sysDevcon);

        /* Maintain Device Drivers */

        /* Maintain Middleware */

        /* Task Delay */
    }
}

/*******************************************************************************
  Function:
    void _WIFLY_RX_Tasks ( void )

  Summary:
    Maintains state machine of WIFLY_RX.
 */

static void _WIFLY_RX_Tasks(void) {
    while (1) {
        WIFLY_RX_Tasks();
    }
}

/*******************************************************************************
  Function:
    void _WIFLY_TX_Tasks ( void )

  Summary:
    Maintains state machine of WIFLY_TX.
 */

static void _WIFLY_TX_Tasks(void) {
    while (1) {
        WIFLY_TX_Tasks();
    }
}

/*******************************************************************************
  Function:
    void _LFA_RX_Tasks ( void )

  Summary:
    Maintains state machine of LFA_RX.
 */

static void _LFA_RX_Tasks(void) {
    while (1) {
        LFA_RX_Tasks();
    }
}

/*******************************************************************************
  Function:
    void _RVRSTATUS_Tasks ( void )

  Summary:
    Maintains state machine of RVRSTATUS_Tasks.
 */

static void _RVRSTATUS_Tasks(void) {
    while (1) {
        RVRStatus_Tasks();
    }
}

/*******************************************************************************
  Function:
    void _DEBUG_Tasks ( void )

  Summary:
    Maintains state machine of DEBUG_Tasks.
 */

static void _DEBUG_Tasks(void) {
    while (1) {
        DEBUG_Tasks();
    }
}

/*******************************************************************************
  Function:
    void _MOTOR_CTRL_Tasks ( void )

  Summary:
    Maintains state machine of MOTOR_CTRL task.
 */

static void _MOTOR_CTRL_Tasks(void) {
    while (1) {
        MOTOR_CTRL_Tasks();
    }
}


/*******************************************************************************
  Function:
    void _LFA_DECISION_Tasks ( void )

  Summary:
    Maintains state machine of MOTOR_CTRL task.
 */

static void _LFA_DECISION_Tasks(void) {
    while (1) {
        LFA_DECISION_Tasks();
    }
}



/*******************************************************************************
 End of File
 */

