# 🛡️ CIS Compliance Reporting Module  
Part of the **BlueGuard Endpoint Security Project**

This module demonstrates how Wazuh performs **Configuration Assessment** and evaluates endpoints against the **CIS Microsoft Windows 11 Enterprise Benchmark v3.0.0**.  
It includes:

- Auto-scanned CIS benchmark results  
- Passed / Failed / Not Applicable breakdown  
- Detailed check analysis  
- Evidence screenshots  
- Exported audit data (CSV)  
- Mapping to major frameworks (ISO 27001, PCI DSS, SOC 2, CMMC)

This module teaches how a SOC Analyst/modern IT Security professional verifies **system hardening**, **policy compliance**, and **security misconfigurations** directly from Wazuh.

---

## 📊 1. Overview of CIS Compliance Scan

Wazuh automatically scans the Windows 11 endpoint using the CIS Benchmark v3.0.0.  
Our latest scan shows:

- **482 total checks**
- **29% overall compliance**
- Multiple policy failures related to password security and account lockout

This provides visibility into configuration drift, insecure defaults, and misaligned security settings.

---

## 🖼️ 2. Dashboard Evidence

Located under:  
`Endpoint Security → Configuration Assessment → Dashboard`

**Screenshots included:**

- `screenshots/compliance-dashboard.png`  
  Overview of Passed / Failed / N/A checks  
  including compliance % and scan timestamp.

- `screenshots/policy-violations.png`  
  Sample failing CIS controls.

- `screenshots/cis-checks.png`  
  Detailed view of individual checks with remediation and compliance mappings.

---

## 🔎 3. Sample CIS Benchmark Findings (Improved Section)
**❌ 1. Minimum Password Length (CIS 1.1.4)**

Status: Failed
Required: 14+ characters
Detected: Less than 14

Rationale:
Short passwords are vulnerable to dictionary and brute-force attacks.

Remediation:
Computer Configuration → Policies → Windows Settings → Security Settings → Account Policies → Password Policy → Minimum password length

Framework Mappings:

- CIS: 1.1.4

- ISO 27001: A.9.4.3

- PCI DSS 4.0: 2.2.2, 8.3.5, 8.3.6, 8.6.3

- SOC 2: CC6.1

- CMMC v2.0: IA.L2-3.5.7

---

**❌ 2. Minimum Password Age (CIS 1.1.2)**

Status: Failed
Required: ≥ 1 day
Detected: 0 days

Rationale:
A minimum password age prevents users from cycling through many passwords quickly to bypass password history requirements.

Remediation:
Computer Configuration → Policies → Windows Settings → Security Settings → Account Policies → Password Policy → Minimum password age

Framework Mappings:

- CIS: 1.1.2

- ISO 27001: A.9.4.3

- SOC 2: CC6.1

---

**❌ 3. Account Lockout Duration & Threshold (CIS 1.2.x)**

Status: Failed
Required:

- Threshold: 10 invalid attempts or fewer

- Lockout Duration: ≥ 15 minutes

- Reset Counter After: 15 minutes

- Detected: Not configured correctly

**Rationale:**
These controls protect against brute-force attempts by locking an account after repeated failed logins.

**Remediation:**
Computer Configuration → Policies → Windows Settings → Security Settings → Account Policies → Account Lockout Policy

Framework Mappings:

- CIS: 1.2.x

- PCI DSS 4.0: 8.3.6

- ISO 27001: A.9.4.2

- CMMC: IA.L2-3.5.8

---

## 📁 4. Exported Reports

Exported data collected during the scan:


