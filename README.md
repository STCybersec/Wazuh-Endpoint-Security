# 🛡️ Wazuh Endpoint Security & Detection Project  
**Real-World SOC Simulation | File Integrity Monitoring | Malware Detection | Alerts & Endpoint Protection**

This project demonstrates how Wazuh detects, logs, and alerts on suspicious activity across Windows endpoints — including file creation, modification, deletion, malware-like behavior, and sensitive file access.

All events were generated through real lab simulations on a Windows machine running the Wazuh Agent.

---

## 📌 Project Scope

### ✔️ 1. File Integrity Monitoring (FIM)
Real-time detection of:
- File creation  
- File modification (with pre/post cryptographic hashes)  
- File deletion  
- Changes inside monitored directories  

**Files monitored in this project:**
- `test1.txt` - created, modified, deleted  
- `passwords.txt` - sensitive file  
- `driver_update.exe` - simulated malicious installer  
- `Dropper.dll` - simulated malware dropper  
- `Realtime` - realtime monitoring with syscheck
---

### ✔️ 2. Malware & Suspicious File Detection

Wazuh automatically generated detection alerts for:
- Unknown `.exe` executables  
- Suspicious `.dll` files  
- Activity in `Public`, `Backups`, and `Temp` directories  
- High-severity rule triggers  

Each alert includes:
- File path  
- Agent name  
- Agent IP  
- Rule level  
- SHA1, SHA256, MD5 file hashes  
- Timestamp  
- Description of detected activity  

---

### ✔️ 3. Change Detection (Before/After Hash Comparison)

For `test1.txt`, Wazuh captured:
- Original state (before modification)  
- Modified state (after content change)  
- Difference in SHA1 and SHA256 values  

This demonstrates Wazuh’s forensic capability.

---

### ✔️ 4. Sensitive File Monitoring  
Alerts triggered for:
- `passwords.txt` access  
- Dropped files inside `C:\Users\Public`, `C:\Backups`, `C:\Temp`  
- Changes to user or shared directories  

These simulate corporate data exposure scenarios.

---

### ✔️ 5. Alert Investigation & Forensics  
Each captured alert includes:
- Severity  
- MITRE-related detection category  
- Event JSON  
- System metadata  
- Agent details  

These screenshots will be included in the repo.

---

## 📸 Screenshots Included

The following screenshots are included under `/screenshots/`:

### 🟦 File Integrity Monitoring (FIM)
- test1.txt — creation  
- test1.txt — modification (*before/after hashes*)  
- test1.txt — deletion  
- Raw FIM event JSON  

### 🔴 Suspicious File Activity / Malware Simulation
- driver_update.exe detection  
- Dropper.dll detection  
- passwords.txt detection  

Each screenshot captures:
- Rule triggered  
- File details  
- Hash values  
- Agent information  

---

## 📂 Recommended Repository Structure

