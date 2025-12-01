# 📁 Evidence & Logs

This module includes evidence showing:

## 1. VT Detection (66 engine positives)
`/screenshots/virustotal-detection.png`

## 2. Before Quarantine
`/screenshots/hr_policy_update_before.png`  
File is visible in `C:\Downloads`

## 3. After Quarantine
`/screenshots/hr_policy_update_after.png`  
File successfully removed from the directory

## 4. Wazuh Event Log
`/screenshots/alert-details.png`

### Event Fields Include:
- Rule ID: 87105 (VirusTotal)
- Custom Rule ID: 200100 (AR trigger)
- Malicious: 1  
- Positives: 66 engines  
- File path: `c:\downloads\hr_policy_update_2025.txt`
- Timestamp
- MITRE: Execution (T1203)

These artifacts prove both:
- Detection  
- Automated containment  
