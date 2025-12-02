## 🛡️ Wazuh Active Response Project - VirusTotal Automated File Removal

This project demonstrates a complete end-to-end Active Response workflow using Wazuh + VirusTotal to automatically detect, alert on, and remove malicious files from Windows endpoints.

It forms part of my cybersecurity practical portfolio and is implemented as a corporate-style, SOC-aligned detection & response workflow.

---

## 📌 Overview

When a file on a monitored Windows endpoint is scanned using Wazuh’s VirusTotal integration and is flagged as malicious, Wazuh automatically:

- Generates a VirusTotal alert (rule 87105)
- Triggers a custom local rule (200100)
- Executes a file-removal Active Response command
- Sends the request to the Windows agent
- The agent runs a PowerShell script that deletes the malicious file
- Logs the deletion event for incident evidence

---

## 🏛️ **Repository Structure**

- configs/
  ossec.conf             → Manager command definition for agent-side deletion
  local_rules.xml        → Custom rule triggering file-removal AR

- scripts/
  remove-threat.bat   → Batchfile script executed on Windows agents

- evidence/
  vt_detection.json               → Raw VirusTotal alert
  screenshot_before_removal.png   → File present before AR
  screenshot_after_removal.png    → File deleted after AR
  screenshot_vt_positives.png     → VirusTotal results (malicious score)

- docs/
  workflow_explanation.md         → Full technical incident walkthrough


---

## ⚙️ **Active Response Logic (High-Level)**

### **1. VirusTotal Detects the File**
Wazuh uploads the file hash to VirusTotal, returning:

- 660+ malicious engine detections
- SHA1 / SHA256 hash match
- Malicious = 1
- Rule 87105 fires on the manager

---

### **2. Wazuh Local Rule Triggers the AR**
`local_rules.xml` contains rule **200100**, which:

- Watches for rule 87105  
- Confirms the file is inside `C:\Downloads\`  
- Executes the command **remove-threat-file**

---

### **Windows Agent Runs remove-threat.bat\
The script:

- Parses the alert JSON for file path
- Confirms file exists
- Permanently deletes it
- Logs the deletion to:
C:\Program Files (x86)\ossec-agent\active-response\active_response.txt

---

## 🔍 **Evidence Included**

| Evidence File | Description |
|--------------|-------------|
| `vt_detection_full_event.json` | The full Wazuh → VT integration alert showing 66 malicious detections |
| `screenshot_before_removal.png` | The file (`hr_policy_update_2025.txt`) visible prior to AR |
| `screenshot_after_removal.png` | File successfully removed |
| `screenshot_vt_positives.png` | Visual proof of all VT positives |

These files demonstrate the complete detection → response → verification workflow.

---

## 🧪 **How to Replicate (Summary)**

1. Deploy Wazuh Manager + VirusTotal integration  
2. Configure manager-side `ossec.conf` with command definition  
3. Deploy `remove-threat.batch` to agent `active-response/bin`  
4. Add `local_rules.xml` rule and restart Wazuh Manager  
5. Drop an EICAR or test file on the Windows endpoint  
6. Watch Wazuh remove it in real time  

---

## 📈 **Purpose of the Project**

This repository showcases:

- Threat detection automation  
- Endpoint containment using Active Response  
- Real corporate SOC workflow simulation  
- Documentation of malicious events using screenshots & logs  
- Integration of VirusTotal into real-time security monitoring  

It is suitable for:

- Security Operations (SOC) analyst portfolio  
- Blue Team engineering demonstrations  
- Academic cybersecurity submissions  
- Corporate security presentations  

---

## 👤 **Author**

**Sanele Siyabonga Thusi**  
Cybersecurity Student @ University of Johannesburg  
SOC / Blue Team Trainee • Vulnerability Assessment • Wazuh • Kali Linux  

---

## ✔️ **Status**

✅ Completed  
📁 Fully documented  
🧪 Tested using EICAR simulation file  
🛡️ Automatic quarantine confirmed working  

---
