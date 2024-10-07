#!/bin/bash
grep -i memtotal /proc/meminfo > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Fernandez/RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt
sudo dmidecode -t chassis | grep -i manufacturer >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Fernandez/RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt
