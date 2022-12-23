Author
===
This project was made by Khalil Hasanzade at the request of Hans-Peter B.

Guacamole
====
Guacamole is a clientless remote desktop gateway. It supports standard protocols like VNC,RDP and SSH.
This script is the automatic installation script of Guacamole.
The script works based on Docker and does the following operations.

1. Installing Docker
2. Downloading and installing Guacamole Container.
3. Automatically creates an assigned user for guacamole. (The created user is not root user, its name is guacuser.)
4. Sets up no-auth function and automatic login for guacamole.

Since the No-auth feature for guacamole does not work in version 1.4, a special modification was made to this version and it worked.

**Thus, by running a single script, it does everything automatically from docker installation to all configurations, and all that remains is to type the ip address in the browser and see the ssh screen.**

---
Building
===

For installation, simply run the commands below.:

```
cd /tmp
git clone https://github.com/khalilhasanzade/guacamole.git
cd guacamole
chmod +x install.sh
./install.sh
```

---
Screenshot
===
![image](https://raw.githubusercontent.com/khalilhasanzade/guacamole/main/screenshot/guacamole.jpg)
---

Credits
===

Guacamole is an open source project and is copyright Glyptodon LLC

This docker image is built upon the baseimage made by phusion and forked from hall/guacamole and Zuhkov/docker-containers/guacamole
