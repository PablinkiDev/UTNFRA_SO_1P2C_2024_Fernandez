#!/bin/bash
sudo passwd
vagrant
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
PASS=$(sudo cat /etc/shadow | grep vagrant | awk -F ':' '{print $2}')
sudo useradd -m -s /bin/bash -p $PASS -g p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -p $PASS -g p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -p $PASS -g p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -p $PASS -g p1c2_2024_gProfesores p1c2_2024_P1
sudo groupadd p1c2_2024_A1
sudo groupadd p1c2_2024_A2
sudo groupadd p1c2_2024_A3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores/
sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1/
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2/
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3/
sudo chmod -R u=rwx,g=rw,o= /Examenes-UTN/alumno_1/
sudo chmod -R u=rwx,g=rw,o= /Examenes-UTN/alumno_2/
sudo chmod -R u=rwx,g=,o= /Examenes-UTN/alumno_3/
sudo chmod -R u=rwx,g=rwx,o=rx /Examenes-UTN/profesores/
su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
vagrant
su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
vagrant
su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
vagrant
su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1
vagrant
