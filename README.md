# Kol1bry_infra
Kol1bry Infra repository
Самостоятельное задание
Исследовать способ подключения к someinternalhost в одну команду из вашего рабочего устройства, проверить работоспособность найденного решения и внести его в README.md в вашем репозитории

ssh-agent -s
eval "$(ssh-agent -s)"
ssh-add -L
после SSH Forwarding можем использовать команды:
ssh -i ~/.ssh/appuser -A -tt appuser@84.201.174.139 ssh 10.130.0.25 
или 
ssh -J appuser@84.201.174.139 appuser@10.130.0.25

appuser@someinternalhost:~$ hostname -f
someinternalhost.ru-central1.internal

Дополнительное задание:
Предложить вариант решения для подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства, чтобы подключение выполнялось по алиасу someinternalhost и внести его в README.md в вашем репозитории

$ cat ~/.ssh/config
#######OTUS##############
#
#
Host bastion
User appuser
Port 22
HostName 84.201.174.139

Host someinternalhost
User appuser
Port 22
HostName 10.130.0.25
ProxyJump bastion

ssh someinternalhost

Задание
конфигурационный файл для подключения к VPN - cloud-bastion.ovpn

Опишите в README.md и получившуюся конфигурацию и данные для подключения в следующем формате (важно для проверки!):

bastion_IP = 84.201.174.139 
someinternalhost_IP = 10.130.0.25

