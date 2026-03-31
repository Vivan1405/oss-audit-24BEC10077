# Open Source Audit: Git
*Student Name:* Vivan Bari  
*Registration Number:* 24BEC10077  
*Course:* Open Source Software  
*Chosen Software:* Git  

## Project Description
The project is written in shell scripts, which are in Bash programming language. The project is a part of the capstone project in the course of Open Source Audit. The shell scripts can run on a Linux-based system. The shell scripts are written to execute a number of tasks, which is a necessity in supporting open source software.

## Scripts Overview
The project contains a total of five shell scripts. The shell scripts can be described as follows:

1. *script1_system_identity.sh*: This shell script will greet the user, identify the machine this script is running on, and provide information about the operating system, kernel, and version, and the basic open source license under which this system operates.
2. *script2_package_inspector.sh*: This shell script will identify whether 'Git' is installed in this system, and what version it is. It will display this information in a dynamic manner, and then display the basic philosophy behind it.
3. *script3_disk_permission_auditor.sh*: This shell script will go through a number of critical system paths, which are related to 'Git.' The output will be formatted in a clean manner.
4. *script4_log_analyzer.sh*: This shell script will safely read a file line by line, and then use a while loop to identify a keyword in this file, and then display this information, along with the last line of text in this file.
5. *script5_manifesto_generator.sh*: This script will prompt you with three questions, after which a new file will be created with a predefined format: 'Open Source Manifesto.'

## How to Setup and Run (Ubuntu/Linux)

### ⚙️ Dependencies & Installation
To execute these scripts, you will have to install Linux on your machine first. The scripts will execute basic Linux commands, such as bash, grep, awk, and git.

*1. Install Git on Ubuntu/Debian:*
bash
sudo apt update
sudo apt install git


*2. Verify Installation:*
bash
git --version


### 🐧 Testing on Linux
- *Permissions:* Make sure that the permissions of these scripts are executable.
- *File Endings:* If you have written these scripts on a Windows-based text editor and then copied these scripts onto your Linux machine, you will encounter the following error: “\r command not found” or “bad interpreter” on your Linux machine/bash prompt. The solution is to install the dos2unix package on your Linux machine by executing the following commands:
bash
sudo apt install dos2unix
dos2unix *.sh


### 1. Make scripts executable
To execute these bash scripts, Linux needs to know that these are not normal code files, but code files. Linux will execute these scripts only if these files are made executable. To make these scripts executable, open your terminal in the directory containing these scripts, and type the following:
bash
chmod +x *.sh


### 2. How to Execute
The commands below are required to be typed in the terminal for the bash scripts to work, with a "./" before their names.

```bash
./script1_system_identity.sh

./script2_package_inspector.sh

./script3_disk_permission_auditor.sh

# Note for Script 4: You have to provide a log file to read from! /var/log/dpkg.log is generally accessible to standard users without sudo!
./script4_log_analyzer.sh /var
