FROM ubuntu:22.04
#Actualizamos
RUN apt-get update
#Instalamos vlc y minidlna
RUN apt-get install -y vlc minidlna
#Creamos el drectorio vids dentro de home
RUN mkdir -p /home/vids/
#le damos permisos
RUN chmod 775 /home/vids/
#Copiamos el minidlna.conf que tenemos en el github y lo reemplazamos en el docker (para asi hacer toda la configuracion necesaria mas comodamente para mi)
COPY minidlna.conf /etc/minidlna.conf
#Copiamos el video que tenemos en el github y lo pegamos dentro del directorio vids
COPY spin.mp4 /home/vids/spin.mp4
#Abrimos el puerto 1900 udp
EXPOSE 1900/udp
#Abrimos el puerto 8200 tcp
EXPOSE 8200/tcp
#Y aqui en el cmd el comando "minidlnad -d" hace un start y restart del servicio dlna 
CMD ["/bin/bash","-c","minidlnad -d"]