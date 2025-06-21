# /bin/bash

default_status="$(systemctl is-active openvpn-client@46.service)"

if [ "${default_status}" = "active" ]; then

  sh ~/src/script/switch_vpn.sh 46.conf
  sh ~/src/script/switch_vpn.sh 0_23.conf

else

  sh ~/src/script/switch_vpn.sh 0_23.conf
  sh ~/src/script/switch_vpn.sh 46.conf

fi
