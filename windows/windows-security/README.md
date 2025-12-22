# windows-security

| Name | Description |
| ---- | ----------- |
| Windows Enable Credential Guard Device | Enable Hypervisor Code Protected Integrity and Credential Guard without UEFI lock for safe approach to this security setting. Use this policy as a baseline and when no other policies are managing this setting. Credential Guard will break authentication to Azure Files where virtual machines are using account keys instead of Kerberos. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Windows Enable Local Admin Password Solution Device | Enforces automatic management of Windows local admin accounts using Microsoft LAPS via Intune. Sets password complexity, length, and expiration; backs up credentials to secure directory; automates account management tasks; and resets passwords after local admin use. Intended for 'NerdAdmin' profile across all assigned Windows endpoints. Use to comply with modern endpoint security best practices and CIS benchmark recommendations. |
| Windows Enable SmartScreen and Phishing Protection Device | Microsoft Defender SmartScreen settings for Windows Explorer (Windows 10, Windows 11), and Phishing Protection in Windows 11. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Windows Security Experience settings Device | Windows Security Center settings and support contact into. Apply to All Devices (optionally with filters) or Entra ID device groups. |

