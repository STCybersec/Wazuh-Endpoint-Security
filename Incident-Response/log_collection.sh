#!/bin/bash
# Collect Wazuh logs and system metadata after an incident

echo "[*] Collecting logs..."

# Wazuh manager logs
cp /var/ossec/logs/ossec.log ./ossec.log
cp /var/ossec/logs/alerts/alerts.json ./alerts.json

# System information
uname -a > system_info.txt
df -h > disk_usage.txt
ps aux > running_processes.txt

echo "[+] Log collection complete."
