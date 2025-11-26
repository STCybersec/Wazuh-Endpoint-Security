# 📧 Wazuh Email Alerting Module  
Part of the **BlueGuard Endpoint Security Project**

This module demonstrates how Wazuh sends automatic **email notifications** for high-risk File Integrity Monitoring (FIM) events, including **file modification** and **file deletion**.  
It includes:

- Email alerting configuration (`ossec.conf`)
- Custom FIM alert rules (`local_rules.xml`)
- Dashboard verification screenshots
- Real event evidence from the Wazuh UI  
- Documentation for SOC analysts and blue-team workflows

---

## 🔔 Overview

Wazuh’s email alerting system allows security teams in IT to receive **real-time notifications** for suspicious endpoint activity.  
In this module, we configured alerts for:

### ✔ File Modification  
Detected via **Rule 550** (Syscheck)  
Classified as suspicious **T1565 – Data Manipulation**

### ✔ File Deletion  
Detected via **Rule 553** (Syscheck)
Mapped to:
- **T1070 - Indicator of Removal**
- **T1485 - Data Destruction**

These alerts notify directly via email when high-risk file activity occurs.

---

