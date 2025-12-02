# 🚨 Incident Response Playbook (Wazuh-Based)

This playbook defines the standardized SOC workflow followed during the incident.

---

# 1. 🛑 Detection Phase

Triggered by Wazuh:

- **FIM:** detected new file created in `C:\Downloads`
- **VirusTotal:** flagged file with 66/69 detections
- **Vulnerability Detector:** identified multiple critical CVEs on the endpoint

Artifacts involved:

- Malicious file: `HR_Policy_Update_2025.txt`
- Vulnerable components: Lenovo System Update, Firefox, Teams

---

# 2. 🔍 Triage Phase

Determine:

- Severity: **High**
- Impact: Integrity + Execution risk
- Attack Vector: Local + User Execution
- Risk Score: Based on CVSS (7.8 - 9.8)

Steps performed:

- Viewed full JSON alert
- Validated hashes (MD5/SHA1)
- Checked VirusTotal permalink
- Reviewed Syscollector inventory

---

# 3. 🛡️ Containment Phase

Actions:

- Wazuh Active Response **automatically deleted** the malicious file
- Analyst validated that:
  - File was removed from disk
  - No duplicate copies existed
  - No related processes were running

Manual containment/scripts included:

- Quarantine USB access (if involved)
- Kill suspicious processes
- Disable vulnerable applications (Firefox/Teams old versions)

---

# 4. 🧽 Eradication Phase

Performed:

- Removed outdated software:
  - Firefox
  - Teams Classic
  - Lenovo System Update (vulnerable version)
- Cleaned temporary directories
/var/ossec/bin/agent_control -R 002(ID of endpoint)

---

# 5. 🔄 Recovery Phase

Verification included:

- Running Syscollector scan again
- Confirming software versions updated
- Checking for new vulnerabilities
- Ensuring FIM baseline is clean

System declared restored when:

✔ No new alerts  
✔ No malicious files on disk  
✔ Vulnerable software patched  

---

# 6. 📘 Post-Incident Activity

Deliverables generated:

- Incident Timeline
- CVE Analysis matrix
- Patch validation report
- Recommendations for prevention
- Updated policies (hardening guidelines)

This playbook ensures repeatable, SOC-grade response handling.

- Cleared Windows Prefetch entries if needed
- Executed a full vulnerability re-scan via command:
