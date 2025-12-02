# 🔍 Active Response + VirusTotal Module Overview

This module demonstrates how Wazuh detects malicious files using the VirusTotal integration, triggers a custom Active Response rule, and automatically removes the malicious file from the Windows endpoint.

The end-to-end workflow includes:

- File dropped into `C:\Downloads`
- Wazuh FIM detects file creation
- The file hash is sent to VirusTotal
- VirusTotal reports **muultiple malicious positives**
- Custom rule triggers Active Response
- The file-removal script executes on the agent
- File is removed and isolated securely
- Alerts and logs are generated in Wazuh Dashboard

This module replicates a real-world SOC workflow used in:

- Endpoint threat detection  
- Malware containment  
- Automated incident response  
- Hash-based threat intelligence enforcement  

It serves as a practical demonstration for SOC Tier 1–2 analysts, IR teams, and threat hunters.
