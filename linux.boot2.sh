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
