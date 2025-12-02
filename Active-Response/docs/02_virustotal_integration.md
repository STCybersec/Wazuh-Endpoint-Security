# 🧬 VirusTotal Integration Detection Flow

Wazuh sends any new/modified file hash to VirusTotal via the VT API.

## ✔️ What VirusTotal Checks For
VirusTotal aggregates results from:
- 69+ antivirus engines
- Sandboxes
- Behavioral analysis
- Static signatures
- Machine learning engines

## ✔️ What Triggers Wazuh
A malicious file is confirmed when:

```json
"malicious": "1",
"positives": "66",
"total": "69"
```

## ✔️ Why We Use VirusTotal

- No need to download or execute the file

- Reduces risk on the analyst

- Extremely high detection accuracy

- Works for PDFs, EXEs, text files, scripts, etc.

  
---

## 📄 3. `03_active_response_workflow.md` - Rule + AR Logic

```md
# 🔥 Active Response Workflow

This module relies on:

- Custom rule **200100**
- VirusTotal rule **87105**
- Active Response command execution
- Batch file removal script

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
