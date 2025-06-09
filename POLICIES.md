# windows

| Name | Description |
| ---- | ----------- |
| Prod-Windows-AllDevice-CompliancePolicy | User-based Windows compliance policy that applies to all default scenarios including Windows PCs, Windows 365, and AVD single session. |
| Prod-Windows-AzureVirtualDesktop-CompliancePolicy | Device-based Windows compliance policy that applies to Azure Virtual Desktop multi-session - assign to All Devices with a filter that includes AVD multi-session hosts or an Entra ID group that targets those session hosts. |
| Prod-Windows-BitLocker | Windows BitLocker settings to enable encryption for fixed drives with the default AES 128 bit XTS encryption, enable encryption for standard users and backup of the key to Azure AD. Assign to 'All Devices' |
| 0_Prod-Windows-ASR-AuditMode-Device | All Attack Surface Reduction rules in Audit mode |
| 1_Prod-Windows-ASR-StandardBlock-AuditMode-Device | Standard Protection Attack Surface Reduction rules in Block mode, with all other ASR rules in Audit mode |
| Prod-Windows-BaselinePolicies-Device | Baseline configurations and policies to enable corporate device experience, restrict Windows consumer features, and configure basic lockdown on cororate device. Apply to All Devices / filters or device groups. |
| Prod-Windows-BaselinePolicies-User | Standard Windows corporate user interface settings to restrict access to consumer features and Microsoft accounts, configures Start menu and Taskbar options, hides public links in the Microsoft Store, etc. Apply to All Users / filters, with exceptions for specified user groups if needed. |
| Prod-Windows-EnableCredentialGuard-Device | Enable Hypervisor Code Protected Integrity and Credential Guard without UEFI lock for safe approach to this security setting. Use this policy as a baseline and when no other policies are managing this setting. Apply to All Devices / filters or device groups. Enabling Credential Guard for Entra ID joined AVD session hosts using storage account access to authenticate a a storage account will break that authentication. |
| Prod-Windows-EnableSmartScreenPhishingProtection-Device | Microsoft Defender SmartScreen settings for Windows Explorer (Windows 10, Windows 11), and Phishing Protection in Windows 11. Apply to All Devices / filters or device groups. |
| Prod-Windows-EnableStorageSense-Device | Storage Sense settings to clear disk space including OneDrive and Downloads folders. Note - this will remove files from Downloads and Recycle Bin. Apply to All Devices / filters or device groups. |
| Prod-Windows-GoogleChrome-Device | Baseline application policy settings for Google Chrome. This policy will lockdown Chrome, including preventing signing into the browser with a Google account. Apply to All Devices / filters or device groups. |
| Prod-Windows-GoogleChrome-Extensions-Device | Configures extension settings in Google Chrome - prevents users from adding extensions, and configures a list of force installed extensions. Apply to All Devices / filters or device groups. |
| Prod-Windows-Microsoft365Apps-Device | Configure Microsoft 365 Apps settings - validate channel. Assumes a single Microsoft 365 Apps package has been deployed, incluing Project and Visio. Enables viewer mode so that users without licenses can use the Microsoft 365 Apps in viewer mode. Apply to All Devices / filters or device groups. |
| Prod-Windows-Microsoft365Apps-User | Configure user targeted policy settings for the Microsoft 365 Apps Apply to All Users / filters or user groups. |
| Prod-Windows-MicrosoftDefenderAntivirus-Device | Microsoft Defender antivirus and antimalware settings. Note 'Local Admin Merge' is enabled. Assign to 'All Devices' |
| Prod-Windows-MicrosoftDefenderExclusions | Folder path exclusions to support Intune clients. Exclusions may need to be updated in MDE as well |
| Prod-Windows-MicrosoftDefenderUpdateControls-Device | Configures Microsoft Defender update channels |
| Prod-Windows-MicrosoftEdge-Device | Baseline Microsoft Edge settings - enforce SmartScreen, sync, basic browser settings. Apply to All Devices / filters or device groups. |
| Prod-Windows-MicrosoftEdge-Extensions-Device | Configures extension settings in Microsoft Edge - prevents users from adding extensions, and configures a list of force installed extensions. Adds: Microsoft Editor, uBlock Origin, My Apps Secure Sign-in Extension, Microsoft Multimedia Redirection. Also enables the Edge sidebar & Copilot default extensions. |
| Prod-Windows-MicrosoftEdge-ProgressiveWebApps-User | Configure list of force-installed Microsoft 365 Progessive Web Apps that have no Store or Win32 application |
| Prod-Windows-MicrosoftOneDrive-Device | Configure OneDrive for Business including SSO and Known Folder Move. Important - validate the Tenant ID value matches the Entra ID tenant ID from this tenant. Apply to All Devices / filters or device groups. |
| Prod-Windows-SecurityExperience-Device | Windows Security Center settings and support contact into. Assign to 'All Users' |
| Prod-Windows-WindowsUpdateSettings-Device | Settings for Windows Update. Ensure Windows Update for Business reports have been configured for these settings to be applicable. |

# windows-update

| Name | Description |
| ---- | ----------- |
| (GoLive) Prod_Win11_WindowsFeature_24H2 | ** Do not modify without prior approval **. Baseline: - Windows 11 24H2 |
| (GoLive) Prod_Win_SC_EdgeUpdates_Broad | ** Do not modify without prior approval **. Baseline: - Assign to group "Intune-Win-Corporate-Device-Dynamic". Deploys Edge Stable Channel Updates. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_EdgeUpdates_Limited | ** Do not modify without prior approval **. Baseline: - Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned". Deploys Edge Stable Channel Updates. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_EdgeUpdates_Preview | ** Do not modify without prior approval **. Baseline: - Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned". Deploys Edge Beta Channel Updates. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_M365App-Updates_Broad | ** Do not modify without prior approval **. Baseline: - Assign to group "Intune-Win-Corporate-Device-Dynamic". Sets Microsoft 365 Apps Update Deadline and Deferral. |
| (GoLive) Prod_Win_SC_M365App-Updates_Limited | ** Do not modify without prior approval **. Baseline: - Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned". Sets Microsoft 365 Apps Update Deadline and Deferral. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_M365App-Updates_Preview | ** Do not modify without prior approval **. Baseline: - Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned". Sets Microsoft 365 Apps Update Deadline and Deferral. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_WindowsUpdates_Broad | ** Do not modify without prior approval **. Baseline: - Assign to group "Intune-Win-Corporate-Device-Dynamic" - Quality update deferral period (days) - 3 |
| (GoLive) Prod_Win_WindowsUpdates_Limited | ** Do not modify without prior approval **. Baseline: - Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned". |
| (GoLive) Prod_Win_WindowsUpdates_Preview | ** Do not modify without prior approval **. Baseline: - Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned". |
