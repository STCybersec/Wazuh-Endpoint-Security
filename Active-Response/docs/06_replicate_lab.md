# 🔁 How to Replicate This Lab

Follow these steps to reproduce the full Active Response malware quarantine workflow.

---

## 1️⃣ Drop a Malicious Test File

Save the EICAR-based file with malicious VT-hashed content:

C:\Downloads\hr_policy_update_2025.txt

---

## 2️⃣ Wait for Wazuh File Integrity Monitoring (FIM)

FIM detects the file creation.

---

## 3️⃣ VirusTotal Scans the Hash Automatically

No manual steps required.

---

## 4️⃣ Wazuh Receives Result

If positives > 1, rule 87105 fires.

---

## 5️⃣ Custom Rule 200100 Triggers AR

Active Response sends the JSON event to the Windows agent.

---

## 6️⃣ File is Quarantined

Moved to:

active-response\quarantine\

Logs written to:

active-response\logs\quarantine_agent.log

---

## 7️⃣ Verify in Dashboard

Navigate to:

Threat Intelligence → VirusTotal
Security Events → Events
Active Response Logs → agent 002

---

This fully simulates enterprise-grade automated malware containment.
