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
