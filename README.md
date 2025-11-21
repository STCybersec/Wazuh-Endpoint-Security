# 🛡️ Wazuh Monitoring Project – Completed Implementation

This repository documents my completed end-to-end Wazuh security monitoring setup, focused on **file integrity monitoring, malware detection, vulnerability detection, active response, email alerting, and compliance-aligned event tracking** across Windows endpoints.

---

## 📂 Project Overview

I successfully deployed and configured the **Wazuh Agent on Windows** and implemented a full monitoring workflow that covers:

- **File Integrity Monitoring (FIM)**
- **Vulnerability Detection & Management**
- **Real-time Security Event Alerts**
- **Automated Active Response (AR)**
- **Email Alerting for High-Severity Events**
- **Compliance-Aligned Logging (POPIA, ISO standards)**

This repository contains the results and artefacts from those configurations.

---

## 🧩 What I Implemented

### 🔍 1. File Integrity Monitoring (FIM)
I configured Wazuh to monitor critical Windows directories in real-time.  
The project includes:

- Creation, modification, and deletion of `test1.txt`
- Before/after **hash change evidence**
- File details upon deletion
- Logs extracted from Wazuh dashboards

This demonstrates FIM’s ability to detect and record unauthorized changes instantly.

---

### 🛠️ 2. Malware Detection & Management
I enabled the Wazuh Malware Detector module, allowing:

- Detection of outdated or risky applications
- Identification of vulnerable executables such as:
  - `driver_update.exe`
  - `Dropper.dll`
  - `passwords.txt`
- Severity classification to guide remediation

All vulnerability findings were verified in the Wazuh Security Events dashboard.

---

### 📧 3. Email Alerting
I integrated Wazuh with an SMTP relay to receive **email notifications** for:

- High-severity alerts
- Vulnerable software detections
- Suspicious file modifications
- Unauthorized file drops (e.g., DLLs, EXEs)

This provides immediate visibility into critical security events.

---

### ⚔️ 4. Active Response Automation
I implemented Active Response for:

- Auto-deleting malicious files
- Blocking suspicious processes
- Executing predefined commands when specific rules fire

This elevates the endpoint from **passively monitored** to **actively defended**.

---

### 📜 5. Compliance & Audit Readiness
This project aligns with key compliance requirements:

- **POPIA Condition 2** - Security Safeguards  
- **ISO/IEC 27001** - A.12.4 Logging & Monitoring  
- **CIS Controls** - Continuous Vulnerability Management & Audit Log Management  

The repo also includes compliance evidence such as logs, hashes, screenshots, and configuration files.

---

## 📁 Repository Structure

| File/Folder      | Description |
|------------------|-------------|
| `/screenshots/`  | Evidence of alerts, FIM events, vulnerability detections |
| `/hashes/`       | Before/after SHA256 hash results |
| `test1_events.md` | Creation, modification, deletion logs |
| `vuln_alerts.md` | Notes on flagged executables and detections |
| `fim_config.xml` | Example FIM configuration used |
| `project_summary.md` | High-level description of the completed setup |

---

## ✅ Summary

This project demonstrates my ability to **plan, deploy, configure, and validate** a fully functional Windows security monitoring environment using Wazuh. I successfully implemented:

✔ Real-time file monitoring  
✔ Vulnerability scanning & management  
✔ Automated alerting  
✔ Active response  
✔ Compliance-aligned evidence collection  

It reflects practical, real-world blue-team and SOC capabilities.

