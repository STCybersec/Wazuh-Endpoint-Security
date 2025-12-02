# 🛡️ Removal Process

The removal script performs:

### 1️⃣ Parse the incoming JSON
Extracts infected file:
$data.virustotal.source.file

### 2️⃣ Validate file exists

### 3️⃣ Move file to:
C:\Program Files (x86)\ossec-agent\active-response\active_response.txt

### 4️⃣ Write logs to:
active-response\active_response\remove-threat_agent.txt

### 5️⃣ Return clean exit code to Wazuh

If the file is missing, the script logs the failure but does not break the pipeline.

---

## ✔️ Should you delete all the time?
In a lot of cases, it is best to quarantine a possible threat than to automate deletion.

Quarantine provides:

- Forensic retention  
- Evidence for IR teams  
- Hash extraction  
- Optional sandboxing  
- Safer workflow for corporate SOCs  
