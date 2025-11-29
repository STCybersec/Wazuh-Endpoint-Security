# How Wazuh Performs CIS Compliance Checks

Wazuh evaluates CIS compliance using the **Configuration Assessment module**.

## 🔍 Step 1 — Load CIS Policy Package
Wazuh includes the policy JSON for:
- CIS Windows 11 Enterprise
- CIS Windows 10 Enterprise
- CIS Linux distributions  
- PCI DSS  
- NIST 800-53  
- Others

These policies are stored under:
/var/ossec/ruleset/sca/

## 🖥 Step 2 — Agent Runs System Queries
The Windows agent executes:
- PowerShell commands  
- Registry queries  
- Windows security policy exports (`secedit`)  
- OS configuration checks  

Example PowerShell check:
secedit /export /cfg $env:TEMP\secpol.cfg;
Get-Content $env:TEMP\secpol.cfg | Select-String "MinimumPasswordLength";
Remove-Item $env:TEMP\secpol.cfg

## 📡 Step 3 — Send Results to Manager
The agent sends:
- Passed checks  
- Failed checks  
- Not Applicable checks  

Results are stored in:
/var/ossec/logs/sca/sca.log

## 📊 Step 4 — Wazuh Dashboard Displays:
- Score %  
- Passed/Failed breakdown  
- Full list of checks  
- MITRE/ISO mappings  
