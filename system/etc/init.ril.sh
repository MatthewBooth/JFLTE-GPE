#!/system/bin/sh
# Copyright (c) 2012, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of The Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

#
# restart qmuxd, ril-daemon at restarting fraemworks
#
volddecrypt=`getprop vold.decrypt`
baseband=`getprop ro.baseband`
sgltecsfb=`getprop persist.radio.sglte_csfb`
netmgr=`getprop ro.use_data_netmgrd`
multisimconfig=`getprop persist.radio.multisim.config`

LOG_TAG="config_ril"
LOG_NAME="${0}:"

loge ()
{
  /system/bin/log -t $LOG_TAG -p e "$LOG_NAME $@"
}

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}

failed ()
{
  loge "$1: exit code $2"
  exit $2
}

logi "reason=$volddecrypt"
case "$volddecrypt" in
    "trigger_restart_framework" | "trigger_restart_min_framework")
    logi "baseband=$baseband netmgr=$netmgr"
    case "$baseband" in
        "apq")
        logi "stop ril-daemon"
        setprop ro.radio.noril yes
        stop ril-daemon
    esac
    case "$baseband" in
        "msm" | "csfb" | "svlte2a" | "mdm" | "sglte" | "sglte2" | "dsda2" | "unknown")
        logi "start qmuxd"
        start qmuxd
        case "$baseband" in
            "csfb" | "svlte2a" | "sglte" | "sglte2")
            logi "start qmiproxy"
            start qmiproxy
            ;;
            "dsda2")
            setprop persist.radio.multisim.config dsda
        esac
    esac
    case "$sgltecsfb" in
        "true")
        logi "stop qmiproxy"
        stop qmiproxy
        setprop persist.radio.voice.modem.index 0
    esac
    case "$netmgr" in
        "true")
        logi "start netmgrd"
        start netmgrd
    esac
    logi "multisim=$multisimconfig"
    case "$multisimconfig" in
        "dsds")
        logi "start ril-daemon1"
        stop ril-daemon
        start ril-daemon
        start ril-daemon1
        ;;
        "dsda")
        logi "start ril-daemon1"
        stop ril-daemon
        start ril-daemon
        start ril-daemon1
        ;;
        "tsts")
        logi "start ril-daemon1 ril-daemon2"
        stop ril-daemon
        start ril-daemon
        start ril-daemon1
        start ril-daemon2
    esac
esac
