# Open Source Audit: Git

**Student Name:** Vivan Bari  
**Registration Number:** 24BEC10077  
**Course:** Open Source Software  
**Chosen Software:** Git  

## Project Description
This repository contains the practical shell scripting portion of the Open Source Audit capstone project. These five Bash scripts run on Linux and demonstrate system automation, package management, disk permissions, log auditing, and user interactivity, all of which are essential Linux skills for supporting Open Source infrastructure.

## Scripts Overview

1. **`script1_system_identity.sh`**: Welcomes the user, queries the running machine for OS details, kernel version, and lists the foundational open-source license protecting the system.
2. **`script2_package_inspector.sh`**: Checks if 'Git' is installed on the system (supporting both Ubuntu/Debian `dpkg` and Fedora/RHEL `rpm`). It dynamically outputs version information and highlights the core philosophy of distributed version control.
3. **`script3_disk_permission_auditor.sh`**: Iterates through critical system paths and Git configuration files (e.g., `~/.gitconfig`, `/etc/gitconfig`). It formats output cleanly to show file permissions, owners, and relative file sizes.
4. **`script4_log_analyzer.sh`**: Safely reads a user-specified log file line-by-line using a while loop. It counts occurrences of a chosen keyword (like "error" or "warn") and prints a summary along with the exact latest text lines.
5. **`script5_manifesto_generator.sh`**: Interactively pauses to ask the user three personal questions, formats the answers into a string template, and automatically outputs a personalized 'Open Source Manifesto' text file structure.

## How to Setup and Run (Ubuntu/Linux)

### ⚙️ Dependencies & Installation
To run these scripts, you need a basic Linux environment. The scripts depend on standard utilities (`bash`, `grep`, `awk`), and `git`.

1. **Install Git on Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install git
```
2. Verify the installation:
```bash
git --version
```

### 🐧 Testing on Linux
- **Permissions:** You must give the scripts execute permission before running them.
- **File Endings:** If you edited these scripts on Windows and copied them to Linux, you might see a "\r command not found" or "bad interpreter" error. To fix this, run `sudo apt install dos2unix` and then `dos2unix *.sh`.


### 1. Make the scripts executable
Before you can run the Bash scripts, Linux needs permission to execute them as code. Open your terminal in this directory and run:

```bash
chmod +x *.sh
```

### 2. Example Run Commands
Run each script using `./`

```bash
./script1_system_identity.sh

./script2_package_inspector.sh

./script3_disk_permission_auditor.sh

# Note for Script 4: You must pass a log file to read. /var/log/dpkg.log is usually readable by standard users without needing sudo!
./script4_log_analyzer.sh /var/log/dpkg.log error

./script5_manifesto_generator.sh
```
