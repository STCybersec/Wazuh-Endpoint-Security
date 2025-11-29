## Remediation

Computer Configuration >
Windows Settings >
Security Settings >
Account Policies >
Password Policy >
Minimum password length

Set: **14 or more characters**

---

## ❗ Minimum Password Age  
**Status:** ❌ Failed  
**CIS Control:** 1.1.3  
**Requirement:** Users must retain a password for at least **1 day**

### 🔎 Why This Matters  
Prevents users from cycling through multiple passwords quickly to bypass history restrictions.

### 🛠 Remediation  
Set **Minimum password age = 1 day**  
via Local Security Policy or Group Policy.

---

## ❗ Enforce Password History  
**Status:** ❌ Failed  
**CIS Control:** 1.1.1  
**Requirement:** System should remember **24 previous passwords**

### 🔎 Why This Matters  
Prevents reusing recent passwords, reducing risk of predictable credential cycles.

### 🛠 Remediation  
Set **Enforce password history = 24 passwords**

---

## ❗ Account Lockout Duration  
**Status:** ❌ Failed  
**CIS Control:** 1.2.2  
**Requirement:** Lockout must be **15 minutes or longer**

### 🔎 Why This Matters  
Short lockout duration allows attackers to perform repeated login attempts.

### 🛠 Remediation  
Set **Account lockout duration = >= 15 minutes**

---

## ❗ Account Lockout Threshold  
**Status:** ❌ Failed  
**CIS Control:** 1.2.3  
**Requirement:** Lockout after **5 invalid attempts**

### 🔎 Why This Matters  
Too many allowed attempts increases brute force exposure.

### 🛠 Remediation  
Set threshold to **5** attempts.

---

# 🟢 Passed Controls (Examples)

| Control | Description | Status |
|--------|-------------|--------|
| 1.1.2 | Maximum password age configured properly | ✔ Passed |
| 26001 | Max password age <= 365 | ✔ Passed |

---

# 📁 Evidence Collected

### Included Files
- `compliance_results.csv`
- Configuration Assessment Dashboard screenshots
- Policy inventory and event list screenshots

---

# 🏁 Final Summary

The endpoint scored **29% compliance**.  
Major risks include:

- Weak password policy  
- Weak account lockout policy  
- Low baseline hardening  

Applying the remediation steps above will significantly increase compliance and reduce attack surface.

This module serves as a real-world demonstration of compliance management using Wazuh.

---
