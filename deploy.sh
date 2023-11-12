#!/bin/bash

color_echo() {
  local color=$1
  local message=$2
 
  case "$color" in
    "red")
      echo -e "\033[0;31m$message\033[0m"
      ;;
    "green")
      echo -e "\033[0;32m$message\033[0m"
      ;;
    "yellow")
      echo -e "\033[0;33m$message\033[0m"
      ;;
    "blue")
      echo -e "\033[0;34m$message\033[0m"
      ;;
    "purple")
      echo -e "\033[0;35m$message\033[0m"
      ;;
    "cyan")
      echo -e "\033[0;36m$message\033[0m"
      ;;
    "white")
      echo -e "\033[0;37m$message\033[0m"
      ;;
    *)
      echo "Unsupported color: $color"
      ;;
  esac
}


color_echo "white" "Hi, it is fInstaller."

ARCH=$(dpkg --print-architecture)
FRPCCONF="IyB5b3VyIHByb3h5IG5hbWUgd2lsbCBiZSBjaGFuZ2VkIHRvIHt1c2VyfS57cHJveHl9DQp1c2VyID0gIjNkIg0KDQojIEEgbGl0ZXJhbCBhZGRyZXNzIG9yIGhvc3QgbmFtZSBmb3IgSVB2NiBtdXN0IGJlIGVuY2xvc2VkDQojIGluIHNxdWFyZSBicmFja2V0cywgYXMgaW4gIls6OjFdOjgwIiwgIltpcHY2LWhvc3RdOmh0dHAiIG9yICJbaXB2Ni1ob3N0JXpvbmVdOjgwIg0KIyBGb3Igc2luZ2xlIHNlcnZlckFkZHIgZmllbGQsIG5vIG5lZWQgc3F1YXJlIGJyYWNrZXRzLCBsaWtlIHNlcnZlckFkZHIgPSAiOjoiLg0Kc2VydmVyQWRkciA9ICIxOTQuNjcuODcuMTY0Ig0Kc2VydmVyUG9ydCA9IDcwMDQNCg0KIyBEZWNpZGUgaWYgZXhpdCBwcm9ncmFtIHdoZW4gZmlyc3QgbG9naW4gZmFpbGVkLCBvdGhlcndpc2UgY29udGludW91cyByZWxvZ2luIHRvIGZycHMNCiMgZGVmYXVsdCBpcyB0cnVlDQpsb2dpbkZhaWxFeGl0ID0gdHJ1ZQ0KDQojIGNvbnNvbGUgb3IgcmVhbCBsb2dGaWxlIHBhdGggbGlrZSAuL2ZycGMubG9nDQpsb2cudG8gPSAiY29uc29sZSINCiMgdHJhY2UsIGRlYnVnLCBpbmZvLCB3YXJuLCBlcnJvcg0KbG9nLmxldmVsID0gImluZm8iDQpsb2cubWF4RGF5cyA9IDMNCiMgZGlzYWJsZSBsb2cgY29sb3JzIHdoZW4gbG9nLnRvIGlzIGNvbnNvbGUsIGRlZmF1bHQgaXMgZmFsc2UNCmxvZy5kaXNhYmxlUHJpbnRDb2xvciA9IGZhbHNlDQoNCmF1dGgubWV0aG9kID0gInRva2VuIg0KIyBhdXRoLmFkZGl0aW9uYWxTY29wZXMgc3BlY2lmaWVzIGFkZGl0aW9uYWwgc2NvcGVzIHRvIGluY2x1ZGUgYXV0aGVudGljYXRpb24gaW5mb3JtYXRpb24uDQojIE9wdGlvbmFsIHZhbHVlcyBhcmUgSGVhcnRCZWF0cywgTmV3V29ya0Nvbm5zLg0KIyBhdXRoLmFkZGl0aW9uYWxTY29wZXMgPSBbIkhlYXJ0QmVhdHMiLCAiTmV3V29ya0Nvbm5zIl0NCg0KIyBhdXRoIHRva2VuDQphdXRoLnRva2VuID0gInN3ajJMTGJldWQ3M2IzaGR5MzMyZSINCg0KIyBTZXQgYWRtaW4gYWRkcmVzcyBmb3IgY29udHJvbCBmcnBjJ3MgYWN0aW9uIGJ5IGh0dHAgYXBpIHN1Y2ggYXMgcmVsb2FkDQp3ZWJTZXJ2ZXIuYWRkciA9ICIwLjAuMC4wIg0Kd2ViU2VydmVyLnBvcnQgPSA3NDAwDQp3ZWJTZXJ2ZXIudXNlciA9ICJhZG1pbiINCndlYlNlcnZlci5wYXNzd29yZCA9ICJhZG1pbiINCiMgQWRtaW4gYXNzZXRzIGRpcmVjdG9yeS4gQnkgZGVmYXVsdCwgdGhlc2UgYXNzZXRzIGFyZSBidW5kbGVkIHdpdGggZnJwYy4NCiMgd2ViU2VydmVyLmFzc2V0c0RpciA9ICIuL3N0YXRpYyINCg0KIyBFbmFibGUgZ29sYW5nIHBwcm9mIGhhbmRsZXJzIGluIGFkbWluIGxpc3RlbmVyLg0Kd2ViU2VydmVyLnBwcm9mRW5hYmxlID0gZmFsc2UNCg0KIyBUaGUgbWF4aW11bSBhbW91bnQgb2YgdGltZSBhIGRpYWwgdG8gc2VydmVyIHdpbGwgd2FpdCBmb3IgYSBjb25uZWN0IHRvIGNvbXBsZXRlLiBEZWZhdWx0IHZhbHVlIGlzIDEwIHNlY29uZHMuDQp0cmFuc3BvcnQuZGlhbFNlcnZlclRpbWVvdXQgPSAxMjANCg0KIyBkaWFsU2VydmVyS2VlcGFsaXZlIHNwZWNpZmllcyB0aGUgaW50ZXJ2YWwgYmV0d2VlbiBrZWVwLWFsaXZlIHByb2JlcyBmb3IgYW4gYWN0aXZlIG5ldHdvcmsgY29ubmVjdGlvbiBiZXR3ZWVuIGZycGMgYW5kIGZycHMuDQojIElmIG5lZ2F0aXZlLCBrZWVwLWFsaXZlIHByb2JlcyBhcmUgZGlzYWJsZWQuDQojdHJhbnNwb3J0LmRpYWxTZXJ2ZXJLZWVwYWxpdmUgPSA3MjAwDQoNCiMgY29ubmVjdGlvbnMgd2lsbCBiZSBlc3RhYmxpc2hlZCBpbiBhZHZhbmNlLCBkZWZhdWx0IHZhbHVlIGlzIHplcm8NCnRyYW5zcG9ydC5wb29sQ291bnQgPSA1DQoNCiMgSWYgdGNwIHN0cmVhbSBtdWx0aXBsZXhpbmcgaXMgdXNlZCwgZGVmYXVsdCBpcyB0cnVlLCBpdCBtdXN0IGJlIHNhbWUgd2l0aCBmcnBzDQojIHRyYW5zcG9ydC50Y3BNdXggPSB0cnVlDQoNCiMgU3BlY2lmeSBrZWVwIGFsaXZlIGludGVydmFsIGZvciB0Y3AgbXV4Lg0KIyBvbmx5IHZhbGlkIGlmIHRjcE11eCBpcyBlbmFibGVkLg0KIyB0cmFuc3BvcnQudGNwTXV4S2VlcGFsaXZlSW50ZXJ2YWwgPSA2MA0KDQojIENvbW11bmljYXRpb24gcHJvdG9jb2wgdXNlZCB0byBjb25uZWN0IHRvIHNlcnZlcg0KIyBzdXBwb3J0cyB0Y3AsIGtjcCwgcXVpYywgd2Vic29ja2V0IGFuZCB3c3Mgbm93LCBkZWZhdWx0IGlzIHRjcA0KdHJhbnNwb3J0LnByb3RvY29sID0gInRjcCINCg0KIyBzZXQgY2xpZW50IGJpbmRpbmcgaXAgd2hlbiBjb25uZWN0IHNlcnZlciwgZGVmYXVsdCBpcyBlbXB0eS4NCiMgb25seSB3aGVuIHByb3RvY29sID0gdGNwIG9yIHdlYnNvY2tldCwgdGhlIHZhbHVlIHdpbGwgYmUgdXNlZC4NCnRyYW5zcG9ydC5jb25uZWN0U2VydmVyTG9jYWxJUCA9ICIwLjAuMC4wIg0KDQojIElmIHRscy5lbmFibGUgaXMgdHJ1ZSwgZnJwYyB3aWxsIGNvbm5lY3QgZnJwcyBieSB0bHMuDQojIFNpbmNlIHYwLjUwLjAsIHRoZSBkZWZhdWx0IHZhbHVlIGhhcyBiZWVuIGNoYW5nZWQgdG8gdHJ1ZSwgYW5kIHRscyBpcyBlbmFibGVkIGJ5IGRlZmF1bHQuDQp0cmFuc3BvcnQudGxzLmVuYWJsZSA9IGZhbHNlDQoNCiMgdHJhbnNwb3J0LnRscy5jZXJ0RmlsZSA9ICJjbGllbnQuY3J0Ig0KIyB0cmFuc3BvcnQudGxzLmtleUZpbGUgPSAiY2xpZW50LmtleSINCiMgdHJhbnNwb3J0LnRscy50cnVzdGVkQ2FGaWxlID0gImNhLmNydCINCiMgdHJhbnNwb3J0LnRscy5zZXJ2ZXJOYW1lID0gImV4YW1wbGUuY29tIg0KDQojIElmIHRoZSBkaXNhYmxlQ3VzdG9tVExTRmlyc3RCeXRlIGlzIHNldCB0byBmYWxzZSwgZnJwYyB3aWxsIGVzdGFibGlzaCBhIGNvbm5lY3Rpb24gd2l0aCBmcnBzIHVzaW5nIHRoZQ0KIyBmaXJzdCBjdXN0b20gYnl0ZSB3aGVuIHRscyBpcyBlbmFibGVkLg0KIyBTaW5jZSB2MC41MC4wLCB0aGUgZGVmYXVsdCB2YWx1ZSBoYXMgYmVlbiBjaGFuZ2VkIHRvIHRydWUsIGFuZCB0aGUgZmlyc3QgY3VzdG9tIGJ5dGUgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdC4NCiMgdHJhbnNwb3J0LnRscy5kaXNhYmxlQ3VzdG9tVExTRmlyc3RCeXRlID0gdHJ1ZQ0KDQojIEhlYXJ0YmVhdCBjb25maWd1cmUsIGl0J3Mgbm90IHJlY29tbWVuZGVkIHRvIG1vZGlmeSB0aGUgZGVmYXVsdCB2YWx1ZS4NCiMgVGhlIGRlZmF1bHQgdmFsdWUgb2YgaGVhcnRiZWF0X2ludGVydmFsIGlzIDEwIGFuZCBoZWFydGJlYXRfdGltZW91dCBpcyA5MC4gU2V0IG5lZ2F0aXZlIHZhbHVlDQojIHRvIGRpc2FibGUgaXQuDQojIHRyYW5zcG9ydC5oZWFydGJlYXRJbnRlcnZhbCA9IDMwDQojIHRyYW5zcG9ydC5oZWFydGJlYXRUaW1lb3V0ID0gOTANCg0KIyBTcGVjaWZ5IGEgZG5zIHNlcnZlciwgc28gZnJwYyB3aWxsIHVzZSB0aGlzIGluc3RlYWQgb2YgZGVmYXVsdCBvbmUNCiMgZG5zU2VydmVyID0gIjguOC44LjgiDQoNCiMgUHJveHkgbmFtZXMgeW91IHdhbnQgdG8gc3RhcnQuDQojIERlZmF1bHQgaXMgZW1wdHksIG1lYW5zIGFsbCBwcm94aWVzLg0KIyBzdGFydCA9IFsic3NoIiwgImRucyJdDQoNCiMgU3BlY2lmeSB1ZHAgcGFja2V0IHNpemUsIHVuaXQgaXMgYnl0ZS4gSWYgbm90IHNldCwgdGhlIGRlZmF1bHQgdmFsdWUgaXMgMTUwMC4NCiMgVGhpcyBwYXJhbWV0ZXIgc2hvdWxkIGJlIHNhbWUgYmV0d2VlbiBjbGllbnQgYW5kIHNlcnZlci4NCiMgSXQgYWZmZWN0cyB0aGUgdWRwIGFuZCBzdWRwIHByb3h5Lg0KdWRwUGFja2V0U2l6ZSA9IDE1MDANCg0KIyBBZGRpdGlvbmFsIG1ldGFkYXRhcyBmb3IgY2xpZW50Lg0KbWV0YWRhdGFzLnZhcjEgPSAiYWJjIg0KbWV0YWRhdGFzLnZhcjIgPSAiMTIzIg0KDQojIEluY2x1ZGUgb3RoZXIgY29uZmlnIGZpbGVzIGZvciBwcm94aWVzLg0KIyBpbmNsdWRlcyA9IFsiLi9jb25mZC8qLmluaSJdDQoNCltbcHJveGllc11dDQpuYW1lID0gInNzaCINCnR5cGUgPSAidGNwIg0KbG9jYWxJUCA9ICIxMjcuMC4wLjEiDQpsb2NhbFBvcnQgPSAyMg0KdHJhbnNwb3J0LmJhbmR3aWR0aExpbWl0ID0gIjEwMjRNQiINCnRyYW5zcG9ydC5iYW5kd2lkdGhMaW1pdE1vZGUgPSAiY2xpZW50Ig0KdHJhbnNwb3J0LnVzZUVuY3J5cHRpb24gPSBmYWxzZQ0KdHJhbnNwb3J0LnVzZUNvbXByZXNzaW9uID0gZmFsc2UNCnJlbW90ZVBvcnQgPSAyMjI="
SERVICE="W1VuaXRdDQpEZXNjcmlwdGlvbj1GcnAgQ2xpZW50IFNlcnZpY2UNCkFmdGVyPW5ldHdvcmsudGFyZ2V0DQoNCltTZXJ2aWNlXQ0KVHlwZT1zaW1wbGUNClVzZXI9bm9ib2R5DQpSZXN0YXJ0PW9uLWZhaWx1cmUNClJlc3RhcnRTZWM9NXMNCkV4ZWNTdGFydD0vdXNyL2Jpbi9mcnBjIC1jIC9ldGMvZnJwL2ZycGMudG9tbA0KRXhlY1JlbG9hZD0vdXNyL2Jpbi9mcnBjIHJlbG9hZCAtYyAvZXRjL2ZycC9mcnBjLnRvbWwNCg0KW0luc3RhbGxdDQpXYW50ZWRCeT1tdWx0aS11c2VyLnRhcmdldA=="

color_echo "green" "You have arch ${ARCH}. Will try to find package for you..."

if which curl > /dev/null 2>&1; then
 dl="curl --fail --silent --connect-timeout 5 --max-time 10 --retry 1 -o"
 read="curl --fail --silent --connect-timeout 5 --max-time 10 --retry 1"
elif which url > /dev/null 2>&1; then
 dl="url --fail --silent --connect-timeout 5 --max-time 10 --retry 1 -o"
 read="url --fail --silent --connect-timeout 5 --max-time 10 --retry 1"
elif which get > /dev/null 2>&1; then
 dl="get -q --connect-timeout 5 --timeout 10 --tries 2 -O"
 read="get -q --connect-timeout 5 --timeout 10 --tries 2 -O-"
elif which wget > /dev/null 2>&1; then
 dl="wget -q --connect-timeout 5 --timeout 10 --tries 2 -O"
 read="wget -q --connect-timeout 5 --timeout 10 --tries 2 -O-"
else
 dl=""
 read=""
fi

if [ -z "${dl}" ];
then
	color_echo "red" "Curl, wget, url, get are not installed. They are needed for installer to work. Continue with installation?" 
	read -p "Continue with installation? [Y/n]" continuewithinstallation
	if [ -z "${continuewithinstallation}" ]; then
		apt install -y wget || apt install -y curl || color_echo "red" "Can not install curl or wget! Install them to continue."
		if which curl > /dev/null 2>&1; then
		 dl="curl --fail --silent --connect-timeout 5 --max-time 10 --retry 1 -o"
		 read="curl --fail --silent --connect-timeout 5 --max-time 10 --retry 1"
		elif which url > /dev/null 2>&1; then
		 dl="url --fail --silent --connect-timeout 5 --max-time 10 --retry 1 -o"
		 read="url --fail --silent --connect-timeout 5 --max-time 10 --retry 1"
		elif which get > /dev/null 2>&1; then
		 dl="get -q --connect-timeout 5 --timeout 10 --tries 2 -O"
		 read="get -q --connect-timeout 5 --timeout 10 --tries 2 -O-"
		elif which wget > /dev/null 2>&1; then
		 dl="wget -q --connect-timeout 5 --timeout 10 --tries 2 -O"
		 read="wget -q --connect-timeout 5 --timeout 10 --tries 2 -O-"
		else
		 dl=""
		 read=""
		fi
	else
		if [ "${continuewithinstallation}" == "Y" ]; then
			apt install -y wget || apt install -y curl || color_echo "red" "Can not install curl or wget! Install them to continue."
			if which curl > /dev/null 2>&1; then
			 dl="curl --fail --silent --connect-timeout 5 --max-time 10 --retry 1 -o"
			 read="curl --fail --silent --connect-timeout 5 --max-time 10 --retry 1"
			elif which url > /dev/null 2>&1; then
			 dl="url --fail --silent --connect-timeout 5 --max-time 10 --retry 1 -o"
			 read="url --fail --silent --connect-timeout 5 --max-time 10 --retry 1"
			elif which get > /dev/null 2>&1; then
			 dl="get -q --connect-timeout 5 --timeout 10 --tries 2 -O"
			 read="get -q --connect-timeout 5 --timeout 10 --tries 2 -O-"
			elif which wget > /dev/null 2>&1; then
			 dl="wget -q --connect-timeout 5 --timeout 10 --tries 2 -O"
			 read="wget -q --connect-timeout 5 --timeout 10 --tries 2 -O-"
			else
			 dl=""
			 read=""
			fi
		else
			color_echo "red" "Exiting. Install them yoursef and start fInstaller once again!"
   			color_echo "white" "...END... DIRECTED BY ROBERT.D WEIDE"
			break;
		fi;
	fi
fi

color_echo "blue" "[*] Checking if dirs exist"
if [ -d "/etc/frp" ]; then
  color_echo "green" "[1] Directory /etc/frp exists. No need to create it."
else
  color_echo "red" "[?] Directory /etc/frp does exist. Trying to create it."
  mkdir -p "/etc/frp"
  chmod a=rwx "/etc/frp"
fi

color_echo "blue" "[*] Unpacking config files"
color_echo "blue" "[2] Unpacking frpc configuration"
echo "${FRPCCONF}" > /tmp/frpc.b64
base64 --decode /tmp/frpc.b64 > /etc/frp/frpc.toml && color_echo "green" "[2] Successfully moved config to directory" || color_echo "red" "[!] Error unpacking config to directory"
color_echo "blue" "[2] Moving service to systemd"
echo "${SERVICE}" > /tmp/frpcs.b64
base64 --decode /tmp/frpcs.b64 > /etc/systemd/system/frpc.service  && color_echo "green" "[2] Successfully moved service to systemd" || color_echo "red" "[!] Error unpacking service to systemd"
rm /tmp/frp* && color_echo "green" "[2] Cleaned up temporary files" || color_echo "red" "[!] Error cleaning up temporary files" 

DOWNLOAD_URI="https://github.com/fatedier/frp/releases/download/v0.52.3/frp_0.52.3_linux_${ARCH}.tar.gz"
color_echo "blue" "[*] Trying to download file for arch: ${ARCH}"
$dl /tmp/frpc.tar.gz $DOWNLOAD_URI && color_echo "green" "[3] Successfully downloaded archive" || color_echo "red" "[!] Error downloading archive!"

color_echo "blue" "[*] Trying to move it to bin dir" 
if [ -f "/tmp/frpc.tar.gz" ]; then
	cd /tmp/
	tar -xzf frpc.tar.gz
	cd /tmp/frp*/
	cp frpc /usr/bin/frpc && color_echo "green" "[4] Move success" || color_echo "red" "[!] Move not success"
	systemctl start frpc && systemctl enable frpc
else
	color_echo "red" "Error downloading file. Try again with internet or check if the arch is not i386"
fi

#rm -rf /tmp/frp* && color_echo "green" "[2] Cleaned up temporary files" || color_echo "red" "[!] Error cleaning up temporary files" 

color_echo "white" "Installation finished. Checking if successfully started..."

sleep 5

isrunning=$(systemctl status frpc | grep 'start' | grep 'success')
if [ -z "${isrunning}" ]; then
   color_echo "red" "Started not successfully"
   systemctl status frpc
else
   color_echo "green" "Started successfully"
   systemctl status frpc
fi
