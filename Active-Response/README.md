# 🛡️ Wazuh Active Response Project — VirusTotal Automated Quarantine

This project demonstrates a **complete end-to-end Active Response workflow** using **Wazuh + VirusTotal** to automatically detect, alert on, and quarantine malicious files on Windows endpoints.

It was built as part of my cybersecurity practical training and is implemented in a **corporate-style, production-aligned design** suitable for SOC Analyst and Blue Team environments.

---

## 📌 **Overview**

When a file on a monitored Windows endpoint is scanned by Wazuh's VirusTotal integration and returns malicious positives, Wazuh:

1. Generates a VirusTotal alert (rule 87105)  
2. Triggers a custom **local rule (200100)**  
3. Executes an **Active Response command**  
4. Sends a quarantine request to the endpoint  
5. Runs a PowerShell script that moves the malicious file into a secure quarantine folder  
6. Logs the action for auditing and incident documentation  

This simulates a **real-world automated malware containment workflow** used in modern SOC environments.

---

## 🏛️ **Repository Structure**

configs/
ossec.conf → Manager command definition for agent-side quarantine
local_rules.xml → Custom rule detecting VirusTotal positives
quarantine.ps1 → PowerShell script executed on Windows agents

evidence/
vt_detection_full_event.json → Raw VirusTotal alert event from Wazuh
screenshot_before_quarantine.png → File existed before AR was triggered
screenshot_after_quarantine.png → File removed/quarantined after AR
screenshot_vt_positives.png → VirusTotal showing 60+ detection positives

docs/
workflow_explanation.md → Detailed technical walkthrough


---

## ⚙️ **Active Response Logic (High-Level)**

### **1. VirusTotal Detects the File**
Wazuh uploads the file hash to VirusTotal, returning:

- 66/69 positives  
- `malicious: 1`  
- MD5 + SHA1 hash match  
- Full permalink for verification  

This is logged under Wazuh rule **87105**.

---

### **2. Wazuh Local Rule Triggers the AR**
`local_rules.xml` contains rule **200100**, which:

- Watches for rule 87105  
- Confirms the file is inside `C:\Downloads\`  
- Executes the command **quarantine-agent-file**

---

### **3. Agent Runs quarantine.ps1**
The PowerShell script:

- Receives the JSON event
- Extracts the file path  
- Moves the file to:
C:\Program Files (x86)\ossec-agent\active-response\quarantine\
- Logs actions into:
C:\Program Files (x86)\ossec-agent\active-response\logs\quarantine_agent.log

---

## 🔍 **Evidence Included**

| Evidence File | Description |
|--------------|-------------|
| `vt_detection_full_event.json` | The full Wazuh → VT integration alert showing 66 malicious detections |
| `screenshot_before_quarantine.png` | The file (`hr_policy_update_2025.txt`) visible prior to AR |
| `screenshot_after_quarantine.png` | File removed and placed into quarantine folder |
| `screenshot_vt_positives.png` | Visual proof of all VT positives |

These files demonstrate the complete detection → quarantine → verification workflow.

---

## 🧪 **How to Replicate (Summary)**

1. Deploy Wazuh Manager + VirusTotal integration  
2. Configure manager-side `ossec.conf` with command definition  
3. Deploy `quarantine.ps1` to agent `active-response/bin`  
4. Add `local_rules.xml` rule and restart Wazuh Manager  
5. Drop an EICAR or test file on the Windows endpoint  
6. Watch Wazuh quarantine it in real time  

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
SOC / Blue Team Trainee • Ethical Hacking • Wazuh • Kali Linux  

---

## ✔️ **Status**

✅ Completed  
📁 Fully documented  
🧪 Tested using EICAR simulation file  
🛡️ Automatic quarantine confirmed working  

---

If you need a **badge section**, **animated diagram**, or want me to generate the `workflow_explanation.md`, just tell me — I’ll generate it for you.
