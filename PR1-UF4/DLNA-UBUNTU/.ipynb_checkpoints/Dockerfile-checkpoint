FROM ubuntu:22.04

RUN apt-get update

RUN apt-get install -y vlc minidlna

RUN mkdir -p /home/vids/

RUN chmod 775 /home/vids/

COPY minidlna.conf /etc/minidlna.conf

COPY spin.mp4 /home/vids/spin.mp4

EXPOSE 1900/udp

EXPOSE 8200/tcp

CMD ["/bin/bash","-c","minidlnad -d"]
