require asyn,4.31
require axis,USER

epicsEnvSet("MOTOR_PORT",    "$(SM_MOTOR_PORT=MCU1)")

epicsEnvSet("IPADDR",        "$(SM_IPADDR=127.0.0.1)")
epicsEnvSet("IPPORT",        "$(SM_IPPORT=5000)")
epicsEnvSet("ASYN_PORT",     "$(SM_ASYN_PORT=MC_CPU1)")
epicsEnvSet("PREFIX",        "$(SM_PREFIX=IOC:)")
epicsEnvSet("MOTOR_NAME",    "$(SM_MOTOR_NAME=m1)")
epicsEnvSet("M",             "$(SM_M=m1)")
epicsEnvSet("R",             "$(SM_R=m1-)")
epicsEnvSet("AXIS_NO",       "$(SM_AXIS_NO=1)")
epicsEnvSet("DESC",          "$(SM_DESC=motor1)")
epicsEnvSet("EGU",           "$(SM_EGU=mm)")
epicsEnvSet("PREC",          "$(SM_PREC=3)")
epicsEnvSet("VELO",          "$(SM_VELO=0.0)")
epicsEnvSet("JVEL",          "$(SM_JVEL=0)")
epicsEnvSet("JAR",           "$(SM_JAR=0)")
epicsEnvSet("ACCL",          "$(SM_ACCL=0)")
epicsEnvSet("MRES",          "$(SM_MRES=1)")
epicsEnvSet("SDBD",          "$(SM_SDBD=0)")
epicsEnvSet("RDBD",          "$(SM_RDBD=0)")
epicsEnvSet("DLLM",          "$(SM_DLLM=0)")
epicsEnvSet("DHLM",          "$(SM_DHLM=0)")

# Simulate the readback of the actual position as an "external encoder"
# Note that the encoder readback is in mm, not steps.
# To fiddle mm like 1.234 into the record.RBV without rounding it
# to 1 as an integer. (This is a new feature in the axis record)
# TC 141 will need this
epicsEnvSet("AXISCONFIG",    "stepSize=1.0;encoder=Main.M$(AXIS_NO).fActPosition;cfgFile=./SimAxis-48-1.cfg")
epicsEnvSet("ERES",          "$(SM_ERES=1)")

epicsEnvSet("HOMEPROC",      "$(SM_HOMEPROC=1)")
epicsEnvSet("HOMEPOS",       "$(SM_HOMEPOS=0.0)")
epicsEnvSet("HVELTO",        "$(SM_HVELTP=9)")
epicsEnvSet("HVELFRM",       "$(SM_HVELTP=4)")
epicsEnvSet("HOMEACC",       "$(SM_HOMEACC=24)")
epicsEnvSet("HOMEDEC",       "$(SM_HOMEDEC=26)")

< EthercatMCController.cmd
< EthercatMCAxis.cmd
< EthercatMCAxisdebug.cmd

