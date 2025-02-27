#include "tsk_motorctrl.h"
#include "system_definitions.h"
#include "rvr_config.h"
#include "public_vars.h"

void InitMotorPins() {
    /* set chipkit pin 3 (RD0) to output */
    TRISDbits.TRISD0 = 0;

    /* set chipkit pin 4 (RC14) to output */
    TRISCbits.TRISC14 = 0;

    /* set chipkit pin 78 (RG1) to output */
    TRISGbits.TRISG1 = 0;
}

void StopMotors() {
    /* enable = disabled*/
    LATDbits.LATD0 = 0;
}

void ForwardMotors() {
    /* enable = disabled*/
    LATDbits.LATD0 = 1;

    /* motor1 = forward */
    LATCbits.LATC14 = 0;
    /* motor2 = forward */
    LATGbits.LATG1 = 0;
}

void ReverseMotors() {
    /* enable = disabled*/
    LATDbits.LATD0 = 1;

    /* motor1 = reversed */
    LATCbits.LATC14 = 1;
    /* motor2 = reversed */
    LATGbits.LATG1 = 1;
}

void LeftMotors() {
    /* enable = disabled*/
    LATDbits.LATD0 = 1;

    /* motor1 = forward */
    LATCbits.LATC14 = 0;
    /* motor2 = reversed */
    LATGbits.LATG1 = 1;
}

void RightMotors() {
    /* enable = disabled*/
    LATDbits.LATD0 = 1;

    /* motor1 = reversed */
    LATCbits.LATC14 = 1;
    /* motor2 = forward */
    LATGbits.LATG1 = 0;
}

void MOTOR_CTRL_Initialize() {

    /* send task enter debug status */
    sendGPIOStatus(STAT_MTR_CTRL_INIT);

    /* init and stop motors*/
    InitMotorPins();
    StopMotors();
    LeftMotors();
    RightMotors();
}

char mtrCtrlBuffer;

void MOTOR_CTRL_Tasks() {
    /* send task enter debug status */
    sendGPIOStatus(STAT_MTR_CTRL_TASK_ENTER);

    /* block until data received on transmit queue */
    int QRcvChk = xQueueReceive(motor_ctrl_queue, &mtrCtrlBuffer, portMAX_DELAY);

    /* if queue rcv was successful */
    if (QRcvChk == pdTRUE) {

        if (mtrCtrlBuffer == MOTOR_CTRL_LEFT) {
            LeftMotors();
        } else if (mtrCtrlBuffer == MOTOR_CTRL_RIGHT) {
            RightMotors();
        } else if (mtrCtrlBuffer == MOTOR_CTRL_STRAIGHT) {
            ForwardMotors();
        } else if (mtrCtrlBuffer == MOTOR_CTRL_REVERSE) {
            ReverseMotors();
        } else if (mtrCtrlBuffer == MOTOR_CTRL_STOP) {
            StopMotors();
        }
    } else {
        sendGPIOError(ERR_BAD_MQ_RECV);
    }
}