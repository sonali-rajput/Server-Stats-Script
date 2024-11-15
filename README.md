# **Server Stats Script**

## **Overview**
The `server-stats.sh` script is a simple utility to analyze basic server performance statistics. It provides insights into:
- Total CPU usage
- Total memory usage (free vs. used, including percentages)
- Total disk usage (free vs. used, including percentages)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

## **GitHub Repository**
The script is available on GitHub. You can find the source code and updates here:  
[project URL](https://roadmap.sh/projects/server-stats)
## **Prerequisites**
To run this script, you need:
1. A Linux environment or WSL (Windows Subsystem for Linux) installed on your system.
2. Required tools installed:
   - `bash` (default in Linux)
   - `mpstat` (part of the `sysstat` package)
   - `ps` (comes pre-installed in most Linux distributions)

### **Installing Dependencies**
If `mpstat` is not installed, run:
```bash
# Ubuntu/Debian
sudo apt update && sudo apt install sysstat -y

# CentOS/RedHat
sudo yum install sysstat -y

