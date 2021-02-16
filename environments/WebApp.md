---
title: Web Application Setup
---

The web application is a simple python application that returns the hostname, the current timestamp, and the output of the `uname` command.

# Installation

All commands are run in the VM unless otherwise specified

1. `sudo apt update`
2. `sudo apt -y install python3-flask`
3. On Host `scp WebApp.py my_userid@vm_ip_address:~`

    Note: the WebApp.py file is available either in the github repository or on Oaks in the **Labs** content folder.

4. `FLASK_APP=WebApp.py flask run --host="0.0.0.0" --port=8080`

# Checkout

To test the app either:

- Point your browser to http://my_vm_address:8080
- `curl http://my_vm_addr:8080`