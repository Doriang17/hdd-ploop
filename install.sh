echo "ce script fonctionne uniquement sous centos 6.7"
yum update
yum upgrade
wget -P /etc/yum.repos.d/ http://ftp.openvz.org/openvz.repo
rpm --import http://ftp.openvz.org/RPM-GPG-Key-OpenVZ
yum update
yum install epel-release vzkernel
yum install ploop vzctl vzquota pigz
echo "SELINUX=disabled" > /etc/sysconfig/selinux
cd /home
wget https://github.com/Doriang17/hdd-ploop/blob/master/dd.sh
echo "Votre kernel openvz est maintenant opérationel veuillez redemarrer le serveur via reboot puis executer dd.sh dans le /home Appuyez sur entrée pour quitter"

read test

