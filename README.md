# 🛡️ Wazuh Monitoring Project - Completed Implementation

This repository documents my completed end-to-end Wazuh security monitoring setup, focused on **file integrity monitoring, malware detection, vulnerability detection, active response, email alerting, incident response simulation and compliance-aligned event tracking** across Windows endpoints.

---

## 📂 Project Overview

I successfully deployed and configured the **Wazuh Agent on Windows** and implemented a full monitoring workflow that covers:

- File Integrity Monitoring (FIM)
- Malware Detection
- Vulnerability Detection
- Active Response
- Email Alerting
- Incident Response Simulation
- Compliance-Aligned Event Tracking (POPIA, ISO 27001)

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

## 🧬 3. Vulnerability Detection (CVE Intelligence)

I fully configured the Vulnerability Detector module with Syscollector.

Wazuh automatically identified vulnerable software on the endpoint, including simulated CVEs:

- CVE-2025-4918 – Firefox 126.0

- CVE-2023-24881 – Microsoft Teams

- Legacy application issues (7zip, VLC, Notepad++)

For every detected vulnerability, Wazuh provided:

- Severity rating (Low → Critical)

- CVSS score

- Attack vector (AV:N / AV:L)

- Description and exploit details

- Patch references

Vulnerability evidence is included under:

- `/sample-alerts/`
- ` /screenshots/`
- `/docs/narrative.md` 

---

### 📧 4. Email Alerting
I integrated Wazuh with an SMTP relay to receive **email notifications** for:

- High-severity alerts
- Vulnerable software detections
- Suspicious file modifications
- Unauthorized file drops (e.g., DLLs, EXEs)

This provides immediate visibility into critical security events.

---

### ⚔️ 5. Active Response Automation
I implemented Active Response for:

- Auto-deleting malicious files
- Blocking suspicious processes
- Executing predefined commands when specific rules fire

This elevates the endpoint from **passively monitored** to **actively defended**.

---

### 📜 6. Compliance & Audit Readiness
This project aligns with key compliance requirements:

- **POPIA Condition 2** - Security Safeguards  
- **ISO/IEC 27001** - A.12.4 Logging & Monitoring  
- **CIS Controls** - Continuous Vulnerability Management & Audit Log Management  

The repo also includes compliance evidence such as logs, hashes, screenshots, and configuration files.

---

## 🚨 7. Incident Response Simulation (NEW)

I added a full Incident Response workflow, showing how a SOC analyst handles a malicious file drop.

The process demonstrates:

## 🟦 1. Detection

- Wazuh FIM detects a new unauthorized file: Dropper.dll
- Alert generated → email sent → high severity.

## 🟧 2. Analysis

- Hash verification

- Rule correlation

- CVE search (if applicable)

- Checking parent process

## 🟥 3. Containment

- Active Response deletes the malicious file using:

- remove-threat.ps1

- remove-threat.sh

## 🟩 4. Eradication

- Cleaning directory

- Scanning for persistence

- Validating no related processes running

## 🟦 5. Recovery

- Confirming file integrity stability

- Verifying no further alerts

- Updating documentation

## 🟨 6. Lessons Learned

- Add directory to stricter monitoring

- Enhance rules

- Improve endpoint hardening

This is documented in docs/narrative.md.

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

This project shows my ability to:

✔ Configure and tune Wazuh like a real SOC analyst
✔ Detect vulnerabilities, threats, malware, and suspicious changes
✔ Build automated active-response workflows
✔ Implement Incident Response lifecycle
✔ Produce compliance-ready evidence
✔ Document professional security artefacts and SOC capabilities.

