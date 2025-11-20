# windows-security

| Name | Description |
| ---- | ----------- |
| Prod-Windows-BitLocker | Windows BitLocker settings to enable encryption for fixed drives with the default AES 128 bit XTS encryption, enable encryption for standard users and backup of the key to Entra ID. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-CredentialGuard-Baseline-Device | Enable Hypervisor Code Protected Integrity and Credential Guard without UEFI lock for safe approach to this security setting. Use this policy as a baseline and when no other policies are managing this setting. Credential Guard will break authentication to Azure Files where virtual machines are using account keys instead of Kerberos. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-SecurityExperience-Baseline-Device | Windows Security Center settings and support contact into. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-SmartScreenPhishingProtection-Baseline-Device | Microsoft Defender SmartScreen settings for Windows Explorer (Windows 10, Windows 11), and Phishing Protection in Windows 11. Apply to All Devices (optionally with filters) or Entra ID device groups. |

