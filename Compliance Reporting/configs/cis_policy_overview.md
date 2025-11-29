# CIS Windows 11 Benchmark v3.0.0 — Policy Overview

Wazuh uses the CIS Microsoft Windows 11 Enterprise Benchmark v3.0.0 to evaluate 
system configuration compliance.  

The benchmark contains **482 automated checks** including:

- Password policy
- Account lockout policy
- Audit policy
- Windows Defender configuration
- Firewall & network security
- SMB, NTLM, and administrative restrictions
- Logging and monitoring standards

Each check is mapped to:

- CIS v3.0.0 benchmark ID  
- MITRE ATT&CK techniques  
- ISO 27001 controls  
- PCI-DSS controls  
- SOC 2 CC6.* controls  
- CMMC practices

Wazuh runs these checks from the **manager**, pulling system configuration 
details from each **agent** using PowerShell and registry queries.
