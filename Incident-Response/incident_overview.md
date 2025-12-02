# 🛡️ Incident Overview – Wazuh Endpoint Security

This document summarizes the incident response approach used in the Wazuh Endpoint Security project.  
The goal is to demonstrate a full SOC workflow using Wazuh alerts, VirusTotal intelligence, and Active Response automation.

---

## 📌 Incident Type

**Malicious File Detection + Vulnerable Software Exposure**

Multiple Wazuh modules contributed to the detection:

- File Integrity Monitoring (FIM)
- VirusTotal Integration
- Vulnerability Detector
- Syscollector Inventory
- Active Response (File Deletion)

---

## 🔍 Detection Summary

Wazuh detected:

1. **A malicious file (EICAR test artifact) inside `C:\Downloads\HR_Policy_Update_2025.txt`**
   - Flagged by VirusTotal (66 positive detections)
   - Triggered Active Response deletion
   - Alert ID: *1764583922.55247906*

2. **High-risk vulnerabilities on the same endpoint**
   - CVE-2022-4568 (Privilege Escalation – Lenovo System Update)
   - CVE-2023-24881 (Microsoft Teams)
   - Firefox RCE vulnerabilities

These contributed to a complete security incident simulation.

---

## 🎯 Objectives

The Incident Response workflow demonstrates:

- Threat detection and alert analysis
- Verification via threat intelligence (VirusTotal)
- Containment and automated remediation
- Vulnerability analysis
- Post-incident validation
- Documentation for SOC reporting

---

## 🔥 MITRE ATT&CK Coverage

The detected activity maps to several techniques:

| Stage | Technique | MITRE ID |
|-------|-----------|-----------|
| Execution | Exploitation for Client Execution | **T1203** |
| Privilege Escalation | Exploit Privilege Escalation Vulnerability | **T1068** |
| Defense Evasion | File Deletion | **T1070** |
| Discovery | System Information Discovery | **T1082** |
| Impact | Modify System Component | **T1601** |

---

## 🧩 Outcome

This incident validated:

- Wazuh's ability to detect malware
- Automated containment using Active Response
- Correlating vulnerabilities with risk exposure
- Complete SOC-style reporting and documentation

This file serves as the high-level summary for the incident module.
