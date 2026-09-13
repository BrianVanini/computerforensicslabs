echo "Lab 1 - Incident Response Script"
echo "-------------------------------"
echo "--TIME--"
echo "date - command: date"
date
echo "uptime - command: uptime"
uptime

echo "--OS Version--"
echo "OS and processor - command: uname -a"
uname -a
echo "Typical name - command: lsb_release -a"
lsb_release -a
echo "Kernel version - command: uname -r"
uname -r

echo "--System Specs--"
echo "CPU info - command: lscpu"
lscpu
echo "Memory info - command: free -h"
free -h
echo "Disk info - command: df -h"
df -h
echo "Partition info - command: sudo fdisk -l"
sudo fdisk -l
echo "Hostname - command: hostname"
hostname
echo "Domain name - command: domainname"
domainname

echo "--Network--"
echo "MAC address - command: ip link show"
ip link show
echo "IP address - command: ip addr show"
ip addr show
echo "Promiscuous mode - command: ip link show | grep PROMISC"
ip link show | grep PROMISC
echo "Network connections - command: sudo ss -tulnp"
sudo ss -tulnp

echo "--Users--"
echo "Currently logged in users - command: who"
who
echo "Logged in/out users - command: last"
last
echo "Users with uid 0 - command: awk -F: '($3 == 0) {print $1}' /etc/passwd"
awk -F: '($3 == 0) {print $1}' /etc/passwd
echo "Root owned SUID files - command: sudo find / -user root -perm -4000 -type f 2>/dev/null"
sudo find / -user root -perm -4000 -type f 2>/dev/null

echo "--Processes and Open Files--"
echo "Processes - command: ps aux | tail -n 5"
ps aux | tail -n 5
echo "Files opened by netcat - command: sudo lsof -c nc | tail -n 5"
sudo lsof -c nc | tail -n 5
echo "Open and unlinked files - command: sudo lsof +L1 | tail -n 5"
sudo lsof +L1 | tail -n 5

echo "--Other--"
echo "File in home dir modified < 1 day - command: find ~ -maxdepth 1 -mtime -1 -type f" 
find ~ -maxdepth 1 -mtime -1 -type f
echo "Scheduled tasks for root - command: sudo crontab -l"
sudo crontab -l
echo "Recent login attempts - command: sudo journalctl -u ssh --since "1 day ago""
sudo journalctl -u ssh --since "1 day ago"
echo "Shutdown/reboot history - command: last -x | grep -E 'shutdown|reboot'"
last -x | grep -E 'shutdown|reboot'
echo "Installed software packages - command: dpkg -l | tail -n 5"
dpkg -l | tail -n 5

