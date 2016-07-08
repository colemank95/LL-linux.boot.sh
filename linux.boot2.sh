touch /tmp/serverinfoclean.txt
echo -n 'Hostname: ' >> /tmp/serverinfoclean.txt
hostname >> /tmp/serverinfoclean.txt
printf '%s\n' >> /tmp/serverinfoclean.txt
echo 'CPU Infromation: ' >> /tmp/serverinfoclean.txt
cat /proc/cpuinfo | grep vendor | uniq >> /tmp/serverinfoclean.txt
cat /proc/cpuinfo | grep 'model name' | uniq >> /tmp/serverinfoclean.txt
cat /proc/cpuinfo | grep -i mhz | uniq >> /tmp/serverinfoclean.txt
lscpu | grep 'Core(s) per socket' | uniq >> /tmp/serverinfoclean.txt
printf '%s\n' >> /tmp/serverinfoclean.txt
cat /proc/meminfo | grep 'MemTotal' >> /tmp/serverinfoclean.txt
printf '%s\n' >> /tmp/serverinfoclean.txt
echo 'Storage Information: ' >> /tmp/serverinfoclean.txt
df >> /tmp/serverinfoclean.txt
printf '%s\n' >> /tmp/serverinfoclean.txt
echo 'Docker Install Check: (Not installed if no version is listed) ' >> /tmp/serverinfoclean.txt
apt-cache policy docker-engine | grep Installed >> /tmp/serverinfoclean.txt

touch /tmp/serverInfoBase64.txt
echo -n 'Hostname: ' | base64 >> /tmp/serverInfoBase64.txt	
hostname | base64 >> /tmp/serverInfoBase64.txt
printf '%s\n' | base64 >> /tmp/serverInfoBase64.txt
echo 'CPU Infromation: ' | base64 >> /tmp/serverInfoBase64.txt
cat /proc/cpuinfo | grep vendor | uniq | base64 >> /tmp/serverInfoBase64.txt
cat /proc/cpuinfo | grep 'model name' | uniq | base64 >> /tmp/serverInfoBase64.txt
cat /proc/cpuinfo | grep -i mhz | uniq | base64 >> /tmp/serverInfoBase64.txt
lscpu | grep 'Core(s) per socket' | uniq | base64 >> /tmp/serverInfoBase64.txt
printf '%s\n' | base64 >> /tmp/serverInfoBase64.txt
cat /proc/meminfo | grep 'MemTotal' | base64 >> /tmp/serverInfoBase64.txt
printf '%s\n' | base64 >> /tmp/serverInfoBase64.txt
echo 'Storage Information: ' | base64 >> /tmp/serverInfoBase64.txt
df | base64 >> /tmp/serverInfoBase64.txt
printf '%s\n' | base64 >> /tmp/serverInfoBase64.txt
ifconfig eth0 | grep 'inet addr:' |  awk '{ print $2 }' | base64 >> /tmp/serverInfoBase64.txt
ifconfig eth0 | grep 'inet addr:' |  awk '{ print $4 }' | base64 >> /tmp/serverInfoBase64.txt
printf '%s\n' | base64 >> /tmp/serverInfoBase64.txt
echo 'Docker Install Check: (Not installed if no version is listed) ' | base64 >> /tmp/serverInfoBase64.txt
apt-cache policy docker-engine | grep Installed | base64 >> /tmp/serverInfoBase64.txt 
