### 🧠 RAM Monitor – Bash Script for Memory Usage Alert

This Bash script is designed to monitor the available RAM on a Linux system in real-time. It fetches the total free memory using the `free` command and parses the output with `awk`. If the available memory drops below a defined threshold (default is 500 MB), it triggers a warning message in the terminal.

This tool is especially helpful for system administrators, DevOps engineers, or anyone managing servers and virtual machines where keeping an eye on resource usage is crucial.

#### 🔧 Features:

* Monitors total free memory (`MB`) using `free -mt`
* Customizable memory threshold value
* Displays a warning when memory is low
* Lightweight and easy to integrate into cron jobs or automation scripts

#### 🛠️ Usage:

```bash
bash ram-monitor.sh
```

You can also schedule it with a cron job to receive regular RAM health checks.
