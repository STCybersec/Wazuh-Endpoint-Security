
---

# 📄 **3. `03_active_response_workflow.md` — Rule + AR Logic**

```md
# 🔥 Active Response Workflow

This module relies on:

- Custom rule **200100**
- VirusTotal rule **87105**
- Active Response command execution
- PowerShell file quarantine script

## 🔐 Detection Chain

1. File created on host  
2. Wazuh FIM detects change  
3. File hash submitted to VT  
4. VT returns detection  
5. Rule 87105 fires  
6. Custom rule 200100 matches `malicious:1`  
7. Active Response executes  
8. `quarantine.ps1` runs on the agent  

This automation prevents malware from being opened by users.

---

## 📌 Why Custom Rule 200100?

Because:
- Enterprise SOCs never rely on default rules alone  
- False positives must be avoided  
- We only respond when **VirusTotal confirms malware**  
- Allows high-fidelity automated containment  
