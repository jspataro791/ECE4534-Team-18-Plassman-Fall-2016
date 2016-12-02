/*******************************************************************************
FileName:       I2CGetByte.c
Processor:      PIC32MX
Compiler:       Microchip MPLAB XC32 v1.00 or higher

Copyright � 2008-2009 released Microchip Technology Inc.  All rights
reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT WARRANTY OF ANY KIND,
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

#include <peripheral/i2c.h>
#include "I2CPrivate.h"

/*******************************************************************************
  Function:
    BYTE I2CGetByte ( I2C_MODULE id )

  Summary:
    Routine to get a byte of data received from the I2C bus

  Description:
    This routine allows the caller to read a byte of data received from the I2C
    bus.

  Precondition:
    The module must have been configured appropriately and enabled, a transfer
    must have been previously started, and a byte of data must have been 
    received from the I2C bus.

  Parameters:
    id      - Identifies the desired I2C module

  Returns:
    A byte of data received from the I2C bus.

  Example:
    <code>
    if (I2CReceivedDataIsAvailable(I2C1))
    {
        I2CAcknowledgeByte(I2C1, TRUE);
        data = I2CGetByte(I2C1);
    }
    </code>

  Remarks:
    This routing should be used by both master and slave receivers.
 *****************************************************************************/

BYTE I2CGetByte(I2C_MODULE id) {
    I2C_REGISTERS * const i2cRegisters = i2cBase[id];

    return (i2cRegisters->I2CxRCV);
}
