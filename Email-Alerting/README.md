# 📧 Wazuh Email Alerting Module  
Part of the **BlueGuard Endpoint Security Project**

This module demonstrates how Wazuh sends automatic **email notifications** for high-risk File Integrity Monitoring (FIM) events, including **file modification** and **file deletion**. It is desinged to showcase practical blue-teaming engineering skills, incident visibility, and alert verification. It includes:

- Email alerting configuration (`ossec.conf`)
- Custom FIM alert rules (`local_rules.xml`)
- Wazuh Dashboard event validation
- Evience of file modification and file deletion events
- Screenshots and artifacts for SOC analysis 
- Documentation following blue-team best practices

All configurations and screenshots are included in the repository's structured format

---

## 🔔 Why Email Alerting Matters
Email alerting enables analysts/IT security professionals to get immediate **visibility** into sensitive file activity - even when not logged into the SIEM. THis mirrors real enterprise practices where:

- Compliance files (HR, finance, customer data) must be monitored.
- Deletions or modifications may signal a security incident.
- Rapid notification is required for response and escalation.

---

## 🛡️ Detection Coverage

### ✔ File Modification  
- Detected via **Rule 550** (Syscheck)  
- Classified as suspicious activity
- Mitre Mapping: **T1565 - Data Manipulation**

### ✔ File Deletion  
- Detected via **Rule 553** (Syscheck)
- Mapped to:
- **T1070 - Indicator of Removal**
- **T1485 - Data Destruction**

Each event generates a visible log in the Wazuh Dashboard and triggers an email alert sent to the configured recipient.

---

## 📁 Included Artifacts

1. **Configurations (`configs`)**
Containss the ecact configurations files used to generate the alerts:
- ossec.conf - Email alerting configuration
- local_rules.xml - Custom rules for modification + deletion events

2. **Screenshots (`Screenshots`)**
Visual evidence of:
- Email alerting setup
- Custom rule validation
- Notification delivery
- Dashboard event review
- High-fedility FIM activiy logs

---

## 🎯 Outcome
This module demonstrates the ability to:
- Configure enterprise-ready Wazuh alerting
- Build custom detection rules
- Validate detections from end to end
- Documenting security engineering work professionally
