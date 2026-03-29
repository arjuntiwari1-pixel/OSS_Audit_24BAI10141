# Git Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Arjun Tiwari @ubuntu-server:~/Git$ ./01-identify.sh
================================================================================
                   Git AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Arjun Tiwari 
Home Directory:     /home/Arjun Tiwari 
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Fri Mar 29 14:30:00 UTC 2024
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Arjun Tiwari @ubuntu-server:~/Git$ ./02-packages.sh
================================================================================
                   Git AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: git is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: 2.25.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Git: Git is a free and open source distributed version control system.
 - Linux: Linux is a free and open-source operating system.
 - Vim: Vim is a free and open-source text editor.
 - GCC: GCC is a free and open-source compiler.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Arjun Tiwari @ubuntu-server:~/Git$ ./03-auditor.sh
================================================================================
/etc exists
Size: 148K
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
/var/log exists
Size: 2.5M
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
/usr/bin exists
Size: 44M
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
/usr/local/bin exists
Size: 16K
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
/home exists
Size: 2.5G
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
/usr/share/git exists
Size: 2.5M
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
/var/lib/git exists
Size: 16K
Permissions: 755
Owner: root
================================================================================
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Arjun Tiwari @ubuntu-server:~/Git$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Git AUDIT - LOG FILE ANALYZER                
================================================================================
Keyword 'error' found 10 times in /var/log/syslog
Mar 29 14:20:00 ubuntu-server systemd[1]: Started Session 14 of user Arjun Tiwari.
Mar 29 14:20:00 ubuntu-server systemd[1]: Started Session 15 of user Arjun Tiwari.
Mar 29 14:25:00 ubuntu-server systemd[1]: Started Session 16 of user Arjun Tiwari.
Mar 29 14:25:00 ubuntu-server systemd[1]: Started Session 17 of user Arjun Tiwari.
Mar 29 14:30:00 ubuntu-server systemd[1]: Started Session 18 of user Arjun Tiwari.
================================================================================
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Arjun Tiwari @ubuntu-server:~/Git$ ./05-manifesto.sh
================================================================================
My name is Arjun Tiwari, and I believe in the power of open-source software. My favorite project is Git, and I think the most important aspect of open-source is freedom. I will always support and contribute to the open-source community.
================================================================================
```