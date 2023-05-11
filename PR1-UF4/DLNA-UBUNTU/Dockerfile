FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y vlc minidlna

COPY spin.mp4 /home/user/spin.mp4

EXPOSE 1900/udp
EXPOSE 8200

CMD ["sh", "-c", "echo 'media_dir=/home/user\nfriendly_name=DockerDLNA' > /etc/minidlna.conf && minidlnad -d"]
