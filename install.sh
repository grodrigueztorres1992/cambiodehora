#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   install.sh 
# Description:   instala y configura sincronizacion de hora chile
# Written by:    Guillermo Rodriguez
# Maintenance:   Guillermo Rodriguez
# ------------------------------------------------------------------------ #
# Usage:         
#       $ ./install.sh


function menuprincipal () {
clear
TIME=1
echo " "
echo $0
echo " "
echo "Ingresa que sistema es!

        1 - CentOs
	2 - Ubuntu	 
	0 - Exit"
echo " "
echo -n "Ingresa option: "
read opcion
case $opcion in
	1)
		function CentOs () {
			INSTALLCEN=`yum install ntpdate -y > /dev/null`
			CREARDIR=`mkdir -p /var/scripts`
			CREARAR=`touch hora.sh`
			CREAR=`echo "#!/bin/bash
ntpdate cl.pool.ntp.org > loghora.log" > hora.sh`
			MV=`mv hora.sh /var/scripts`
			PERMISOS=`chmod 777 /var/scripts/hora.sh`
			echo $INSTALLCEN
			echo $CREARDIR
			echo $CREARAR
			echo $CREAR
			echo $MV
			echo $PERMISOS
		}
		CentOs
		echo "instalado script"
		read -n 1 -p "<Enter> for main menu"
		menuprincipal
		;;

	2)
		function Ubuntu () {
			INSTALLCEN=`apt-get install ntpdate -y > /dev/null`
			CREARDIR=`mkdir -p /var/scripts`
			CREARAR=`touch hora.sh`
			CREAR=`echo "#!/bin/bash
ntpdate cl.pool.ntp.org > loghora.log" > hora.sh`
			MV=`mv hora.sh /var/scripts`
			PERMISOS=`chmod 777 /var/scripts/hora.sh`
			echo $INSTALLCEN
			echo $CREARDIR
			echo $CREARAR
			echo $CREAR
			echo $MV
			echo $PERMISOS
			
		}
		Ubuntu
		echo "instalado script"
		read -n 1 -p "<Enter> for main menu"
		menuprincipal
		;;

	0) 
	       echo Exiting the system...
       	       sleep $TIME
	       exit 0
	       ;;

	*)
		echo Opcion Invalida, Vuelve a intentarlo!
		;;
esac
}
menuprincipal
