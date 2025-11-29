# 📝 CIS Compliance Summary Report  
Windows 11 Enterprise — Wazuh Configuration Assessment  
Date: Nov 29, 2025

---

## 🔍 Overview

This report summarizes the top CIS Benchmark findings detected by Wazuh during the configuration assessment scan. Each finding includes:

- Description  
- Rationale  
- Result (Passed / Failed)  
- Why It Matters  
- Remediation Guidance  

Source data: `compliance_results.csv`

---

# 🔴 High-Risk Failed Controls

Below is the structured summary of key failed controls extracted from the scan.

---

## ❗ Minimum Password Length  
**Status:** ❌ Failed  
**CIS Control:** 1.1.4  
**Requirement:** Passwords must be **14 characters or longer**

### 🔎 Why This Matters  
Short passwords are highly vulnerable to:
- brute-force attacks  
- dictionary attacks  
- offline cracking if hashes are stolen  

### 🛠 Remediation  
Group Policy Path:  
