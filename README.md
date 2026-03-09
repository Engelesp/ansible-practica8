# Ansible + Docker Automation

Este proyecto utiliza **Docker** y **Ansible** para crear y administrar múltiples servidores Ubuntu de forma automatizada.

## Objetivo

Automatizar la configuración de 5 servidores Ubuntu usando Ansible.

## Tecnologías utilizadas

- Docker
- Docker Compose
- Ansible
- Ubuntu

## Creación de los servidores

El archivo `docker-compose.yml` crea **5 contenedores Ubuntu** que funcionan como servidores SSH.

Para iniciarlos:

docker compose up -d


## Inventario de Ansible

El archivo `inventario.ini` contiene los servidores que serán administrados por Ansible.

## Automatizaciones realizadas

El playbook realiza las siguientes tareas en todos los servidores:

- Actualizar paquetes del sistema
- Crear el usuario **itla**
- Crear la carpeta **app**
- Crear el archivo **hola.txt**
- Instalar **cowsay**
- Instalar **htop**

## Ejecutar el playbook

ansible-playbook playbook.yml

## Verificación

Entrar a un servidor:

ssh ansible@localhost -p 2221
