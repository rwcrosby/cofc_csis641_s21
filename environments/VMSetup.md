---
title: Building a VM Based Environment
---

# Downloads

- https://www.kali.org/
- http://downloads.metasploit.com/data/metasploitable/metasploitable-linux-2.0.0.zip
- https://information.rapid7.com/download-metasploitable-2017-thanks.html
- https://cdimage.ubuntu.com/lubuntu/releases/20.10/release/lubuntu-20.10-desktop-amd64.iso
- http://mountrouidoux.people.cofc.edu/CSIS641/docs/WindowsXP.ova
- https://ubuntu.com/download/server

# Build VMs

> Note: while VirtualBox provides the ability to clone VMs, there appear to be issues in how the networking is handled. I found it's safer, and only slightly longer, to do multiple installs.

## Kali VM

- 1024MB memory
- Bridged Network
- Hostname: csis-kali

- Post Install configuration
    + `sudo apt-get install ssh`
    + `sudo systemctl enable ssh`

## Ubuntu Server VM #1

- 1024MB memory
- Bridged Network
- Hostname: csis-fw

## Ubuntu Server VM #2

- 1024MB memory
- Bridged Network
- Hostname: csis-web1

## Ubuntu Server VM #3

- 1024MB memory
- Bridged Network
- Hostname: csis-web2

## Ubuntu Server VM #4

- 1024MB memory
- Bridged Network
- Hostname: csis-switch

## WebApp Installation

All commands are run in the VM unless otherwise specified

1. `sudo apt update`
2. `sudo apt -y install python3-flask`
3. On Host `scp WebApp.py my_userid@vm_ip_address:~`

    Note: the WebApp.py file is available either in the github repository or on Oaks in the **Labs** content folder.

4. `FLASK_APP=WebApp.py flask run --host="0.0.0.0" --port=8080`

To test the app either:

- Point your browser to http://my_vm_address:8080
- `curl http://my_vm_addr:8080`