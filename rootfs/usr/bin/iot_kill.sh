#!/bin/sh
# ------------------------------------------------------------------
# Author:    nlv10677
# Copyright: NXP B.V. 2014. All rights reserved
# ------------------------------------------------------------------


echo "Kill all IoT processes"

killbyname iot_monitor
killbyname iot_ed
killbyname iot_ci
killbyname iot_sci
killbyname iot_sm
killbyname iot_acs
#killbyname iot_su
