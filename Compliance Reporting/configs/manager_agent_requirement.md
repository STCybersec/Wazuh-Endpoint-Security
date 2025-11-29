# Manager & Agent Requirements for CIS Auditing

## 🖥 Manager Requirements
- Wazuh Manager 4.x running with:
  - SCA module enabled (default)
  - Agent connection active
  - Proper time synchronization (NTP)
- Disk space for logs (sca.log, alerts.json)

## 💻 Windows Agent Requirements
- Wazuh Agent 4.x
- Administrator privileges  
- PowerShell enabled  
- Ability to run:
  - secedit
  - registry queries
  - PowerShell cmdlets

## 📁 Files Used by CIS Checks
- Security policy export file: `secpol.cfg`
- Registry hives
- Wazuh-generated JSON evaluation files

## ⚠️ Important Notes
- No additional configuration is required unless custom policies are desired.
- Active Directory GPOs may override local settings — Wazuh reflects real OS state.
