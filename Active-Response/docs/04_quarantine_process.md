# 🛡️ Quarantine Process

The quarantine script performs:

### 1️⃣ Parse the incoming JSON
Extracts infected file:
$data.virustotal.source.file

### 2️⃣ Validate file exists

### 3️⃣ Move file to:
C:\Program Files (x86)\ossec-agent\active-response\quarantine

### 4️⃣ Write logs to:
active-response\logs\quarantine_agent.log

### 5️⃣ Return clean exit code to Wazuh

If the file is missing, the script logs the failure but does not break the pipeline.

---

## ✔️ Why Quarantine Instead of Delete?

Quarantine provides:

- Forensic retention  
- Evidence for IR teams  
- Hash extraction  
- Optional sandboxing  
- Safer workflow for corporate SOCs  
