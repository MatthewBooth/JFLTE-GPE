#!/system/bin/sh
# Copyright (c) 2011-2012, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of The Linux Foundation nor the names of its
#       contributors may be used to endorse or promote products derived
#       from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#

dir0=/data/usf
h_dir=$dir0/hovering
g_dir=$dir0/gesture
t_dir=$dir0/tester
e_dir=$dir0/epos
p2p_dir=$dir0/p2p

trigger_file=$dir0/form_factor.cfg

if [ ! -e $trigger_file ]; then
   # Configurations select upon the current platform
   platform=`cat /sys/devices/system/soc/soc0/hw_platform`
   type=""

   case $platform in
       "Liquid")
           type="liquid"
       ;;
       "Fluid")
           type="fluid"
       ;;
       "MTP")
           type="mtp"
       ;;
   esac

   ln -s $dir0/form_factor_"$type".cfg $dir0/form_factor.cfg
   ln -s $t_dir/cfg_"$type" $t_dir/cfg
   ln -s $e_dir/cfg_"$type" $e_dir/cfg
   ln -s $h_dir/cfg_"$type" $h_dir/cfg
   ln -s $p2p_dir/cfg_"$type" $p2p_dir/cfg
   ln -s $g_dir/cfg_"$type" $g_dir/cfg

   ln -s $t_dir/usf_tester_"$type".lcfg $t_dir/usf_tester.lcfg
   ln -s $e_dir/usf_epos_"$type".lcfg $e_dir/usf_epos.lcfg
   ln -s $h_dir/usf_hovering_"$type".lcfg $h_dir/usf_hovering.lcfg
   ln -s $p2p_dir/usf_p2p_"$type".lcfg $p2p_dir/usf_p2p.lcfg
   ln -s $g_dir/usf_gesture_"$type".lcfg $g_dir/usf_gesture.lcfg

   # Form factor oriented PCM ports definition
   pcm_list=`cat /proc/asound/pcm`
   tx_rx_patterns="tabla_tx2- tabla_rx3-"
   result=""

   for pattern in $tx_rx_patterns; do
       echo $pattern
       ind="${pcm_list##*"$pattern"}"

       case "$pcm_list" in
           "$ind")
           ind="0"
           ;;

           *)
           ind="${ind/ *}"
           ;;
       esac
       result=$result$ind" "
   done
   echo $result>$dir0/pcm_inds.txt

   # The USF based calculators have system permissions
   chown system $dir0/*
   chown system $dir0/*/*
   chown system $dir0/*/*/*
fi

chown system /dev/usf1


# Post-boot start of selected USF based calculators
for i in $(cat $dir0/auto_start.txt); do
   start $i
done
