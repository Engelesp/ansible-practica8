FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    openssh-server \
    sudo \
    && mkdir /var/run/sshd

# Crear usuario ansible
RUN useradd -m -s /bin/bash ansible \
    && echo "ansible:ansible" | chpasswd \
    && adduser ansible sudo \
    && echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Habilitar ssh
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]