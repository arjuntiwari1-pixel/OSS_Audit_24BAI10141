# Git Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Arjun@ubuntu-server:~/Git$ ./01-identify.sh
================================================================================
                   Git AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Arjun
Home Directory:     /home/Arjun
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Mon Mar 30 2026 20:06:33 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Arjun@ubuntu-server:~/Git$ ./02-packages.sh
================================================================================
                   Git AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: git is INSTALLED on this ubuntu system.
Version: 2.34.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Git: A distributed version‑control system that embodies the freedom to collaborate and fork.
 - Vim: A powerful, extensible editor that respects the user's control over their editing environment.
 - GCC: The GNU Compiler Collection, enabling developers to build free software across architectures.
 - Python: An open, community‑driven language that encourages readable and shareable code.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Arjun@ubuntu-server:~/Git$ ./03-auditor.sh
Directory                       Size       Perms      Owner               
--------------------------------------------------------------------------------
/etc                            4.1M       drwxr-xr-x root                
/var/log                        128M       drwxrwxr-x syslog              
/usr/share/git-core             12M        drwxr-xr-x root                
/etc/gitconfig                  N/A        N/A        N/A (missing)       
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Arjun@ubuntu-server:~/Git$ ./04-logs.sh /var/log/syslog error
Keyword 'error' found 7 time(s) in /var/log/syslog
--- Last 5 matching entries ---
Mar 30 20:01:12 ubuntu-server systemd[1]: Failed to start error handling service.
Mar 30 20:02:45 ubuntu-server sshd[1024]: error: Could not load host key: /etc/ssh/ssh_host_rsa_key
Mar 30 20:04:09 ubuntu-server git[2048]: error: unable to access '/var/lib/git/repo.git': Permission denied
Mar 30 20:05:33 ubuntu-server kernel: [123456.789012] EXT4-fs error (device sda1): ext4_find_entry: reading directory #2 offset 0
Mar 30 20:06:20 ubuntu-server apt[3072]: error: unable to fetch some archives, maybe run apt-get update or try with --fix-missing?
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Arjun@ubuntu-server:~/Git$ ./05-manifesto.sh
Enter your favorite FOSS project: Git
Why do you contribute to open source? I enjoy collaborating and improving tools that empower developers.
What is your vision for the future of open source? A world where every developer can freely share and build upon each other's work.
Your manifesto has been saved to arjun.txt
```
