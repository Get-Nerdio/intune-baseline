# Policies

## ./windows-baseline

| Name | Description |
| ---- | ----------- |
| Windows-Avd-MultiSession | Filter for Virtual machines running Windows 10/11 multi-session on Azure Virtual Desktop |
| Windows-Avd-SingleSession | Filter for Azure Virtual Desktop single session machines |
| Windows-EnterpriseEducation | Filter for Windows 10/11 Enterprise or Education edition |
| Windows-VirtualMachines | Filter for Microsoft Hyper-V, VMware Workstation / Fusion, Parallels Desktop, Oracle VirtualBox |
| Windows-Windows365 | Filter for Windows 365 Cloud PCs |
| Prod-Windows-AllDevice-CompliancePolicy | User-based Windows compliance policy that applies to all default scenarios including Windows PCs, Windows 365, and AVD single session. |
| Prod-Windows-AzureVirtualDesktop-CompliancePolicy | Device-based Windows compliance policy that applies to Azure Virtual Desktop multi-session - assign to All Devices with a filter that includes AVD multi-session hosts or an Entra ID group that targets those session hosts. |
| Prod-Windows-BitLocker | Windows BitLocker settings to enable encryption for fixed drives with the default AES 128 bit XTS encryption, enable encryption for standard users and backup of the key to Azure AD. Assign to 'All Devices' |
| Prod-Windows-AzureVirtualDesktop-RemoteDesktop-Device | Remote Desktop settings to apply to Azure Virtual Desktop and Windows 365 devices. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-BaselinePolicies-Device | Baseline configurations and policies to enable corporate device experience, restrict Windows consumer features, and configure basic lockdown on corporate device. Apply to All Devices / filters or device groups. |
| Prod-Windows-BaselinePolicies-User | Standard Windows corporate user interface settings to restrict access to consumer features and Microsoft accounts, configures Start menu and Taskbar options, hides public links in the Microsoft Store, etc.Apply to All Users / filters, with exceptions for specified user groups if needed. |
| Prod-Windows-EnableCredentialGuard-Device | Enable Hypervisor Code Protected Integrity and Credential Guard without UEFI lock for safe approach to this security setting. Use this policy as a baseline and when no other policies are managing this setting.Apply to All Devices / filters or device groups. Enabling Credential Guard for Entra ID joined AVD session hosts using storage account access to authenticate a a storage account will break that authentication. |
| Prod-Windows-EnableSmartScreenPhishingProtection-Device | Microsoft Defender SmartScreen settings for Windows Explorer (Windows 10, Windows 11), and Phishing Protection in Windows 11.Apply to All Devices / filters or device groups. |
| Prod-Windows-EnableStorageSense-Device | Storage Sense settings to clear disk space including OneDrive and Downloads folders. Note - this will remove files from Downloads and Recycle Bin.Apply to All Devices / filters or device groups. |
| Prod-Windows-GoogleChrome-Device | Baseline application policy settings for Google Chrome. This policy will lockdown Chrome, including preventing signing into the browser with a Google account.Apply to All Devices / filters or device groups. |
| Prod-Windows-GoogleChrome-Extensions-Device | Configures extension settings in Google Chrome - prevents users from adding extensions, and configures a list of force installed extensions. Apply to All Devices / filters or device groups. |
| Prod-Windows-Microsoft365Apps-Device | Configure Microsoft 365 Apps settings - validate channel. Assumes a single Microsoft 365 Apps package has been deployed, incluing Project and Visio. Enables viewer mode so that users without licenses can use the Microsoft 365 Apps in viewer mode.Apply to All Devices / filters or device groups. |
| Prod-Windows-Microsoft365Apps-User | Configure user targeted policy settings for the Microsoft 365 Apps. Apply to All Users / filters or user groups. |
| Prod-Windows-MicrosoftDefenderAntivirus-Device | Microsoft Defender antivirus and antimalware settings. Note 'Local Admin Merge' is enabled. Assign to 'All Devices' |
| Prod-Windows-MicrosoftDefenderExclusions | Folder path exclusions to support Intune clients. Exclusions may need to be updated in MDE as well |
| Prod-Windows-MicrosoftDefenderUpdateControls-Device | Configures Microsoft Defender update channels |
| Prod-Windows-MicrosoftEdge-Device | Baseline Microsoft Edge settings - enforce SmartScreen, sync, basic browser settings. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftEdge-Extensions-Device | Configures extension settings in Microsoft Edge - prevents users from adding extensions, and configures a list of force installed extensions.Adds: Microsoft Editor, uBlock Origin, My Apps Secure Sign-in Extension, Microsoft Multimedia Redirection. Also enables the Edge sidebar & Copilot default extensions. |
| Prod-Windows-MicrosoftEdge-ProgressiveWebApps-User | Configure list of force-installed Microsoft 365 Progessive Web Apps that have no Store or Win32 application |
| Prod-Windows-MicrosoftOneDrive-Device | Configure OneDrive for Business including SSO and Known Folder Move.Important - validate the Tenant ID value matches the Entra ID tenant ID from this tenant.Apply to All Devices / filters or device groups. |
| Prod-Windows-SecurityExperience-Device | Windows Security Center settings and support contact into. Assign to 'All Users' |
| Prod-Windows-WindowsUpdateSettings-Device | Settings for Windows Update. Ensure Windows Update for Business reports have been configured for these settings to be applicable. |

## ./windows-update

| Name | Description |
| ---- | ----------- |
| (GoLive) Prod_Win11_WindowsFeature_24H2 | ** Do not modify without prior approval **Baseline:- Windows 11 24H2 |
| (GoLive) Prod_Win_SC_EdgeUpdates_Broad | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-Corporate-Device-Dynamic"Deploys Edge Stable Channel Updates. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_EdgeUpdates_Limited | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned".Deploys Edge Stable Channel Updates. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_EdgeUpdates_Preview | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned".Deploys Edge Beta Channel Updates. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_M365App-Updates_Broad | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-Corporate-Device-Dynamic"Sets Microsoft 365 Apps Update Deadline and Deferral.  |
| (GoLive) Prod_Win_SC_M365App-Updates_Limited | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned".Sets Microsoft 365 Apps Update Deadline and Deferral. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_M365App-Updates_Preview | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned".Sets Microsoft 365 Apps Update Deadline and Deferral. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_WindowsUpdates_Broad | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-Corporate-Device-Dynamic"- Quality update deferral period (days) - 3 |
| (GoLive) Prod_Win_WindowsUpdates_Limited | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned". |
| (GoLive) Prod_Win_WindowsUpdates_Preview | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned". |

## ./windows-extras

| Name | Description |
| ---- | ----------- |
| Win10_Autopilot | Windows Autopilot devices |
| Win10_DeviceGuard | Filter to be applied to "Prod_Win_Catalog_DeviceGuard" configuration. Device Guard only works with Enterprise and Education versions of Windows OS. |
| Win10_DeviceOwnership_Personal | Windows Personal owned devices |
| Win10_Model_VirtualMachine | Windows virtual machines |
| Win10_SKU_Education | Windows with OS SKU Education |
| Win10_SKU_Enterprise | Windows with OS SKU Enterprise |
| Win10_SKU_Home | Windows with OS SKU Home |
| Win10_SKU_Professional | Windows with OS SKU Professional |
| Windows 10 |  |
| Windows 11 |  |
| Windows 365 CPC Enterprise/Frontline + Windows ARM64 |  |
| Windows 365 CPC Enterprise/Frontline |  |
| Windows ARM64 |  |
| Windows Corporate |  |
| Windows DeviceGuard | Filter to be applied to "Prod_Win_Catalog_DeviceGuard" configuration. Device Guard only works with Enterprise and Education versions of Windows OS. |
| Windows Enrollment AutoPilot (Default) | Device assigned to the "Prod_Win_AutoPilot" autopilot profile. |
| Windows Personal |  |
| Windows SKU Education |  |
| Windows SKU Enterprise (Multi-Session) |  |
| Windows SKU Enterprise |  |
| Windows SKU Home |  |
| Windows SKU Professional |  |
| Windows Virtual Machines | Support for Hyper-V and Parallels |
| Windows_10 | Windows 10 based on OS version starting with 10.0.1 |
| Windows_11 | Windows 11 based on OS version starting with 10.0.2 |
| GoLive - Enable Endpoint Analytics | Enables the collection of data required to report on performance and productivity scores for endpoints. Please note this settings in this policy are required for NMM to show the Endpoint Analytics scores in the device properties.  For more information, please check: https://learn.microsoft.com/en-us/mem/analytics/overview |
| GoLive - Firewall_Rules_MODIFY | Leverage CIS (L1) Firewall - Windows 11 Intune 3.0.0 |
| GoLive - Skip Autopilot account setup page | From the Autopilot ESP, skip the account setup page if you have no user assigned apps to save time during initial deployment. Only device assigned application will be installed. |
| GoLive - Windows Hello for Business | Replace this policy CIS (L1) Device Lock & WHFB - Windows 11 Intune 3.0.0  |
| GoLive - Add Local Admin | ** Do not modify without prior approval **  Baseline:  - Creates administrator group "MEM-Win-Admins-Assigned" of specified users on Windows devices.  Note: Verify "MEM-Win-Admins-Assigned" group within the "Configuration settings".  Assign: To device Groups  |
| GoLive - Baseline_MSFT |  |
| GoLive - BitLocker |  |
| GoLive - CIS (L1) Admin Templates - System - Windows 11 Intune 3.0.0 | Cloned policy from CIS (L1) Admin Templates - System - Windows 11 Intune 3.0.0 |
| GoLive - CIS (L1) Admin Templates - Windows Components - Windows 11 Intune 3.0.0 | Cloned policy from CIS (L1) Admin Templates - Windows Components - Windows 11 Intune 3.0.0 |
| GoLive - CIS (L1) Auditing - Windows 11 Intune 3.0.0 | Cloned policy from CIS (L1) Auditing - Windows 11 Intune 3.0.0 |
| GoLive - CIS (L1) Defender - Windows 11 Intune 3.0.0 | Cloned policy from CIS (L1) Defender - Windows 11 Intune 3.0.0 |
| GoLive - CIS (L1) Device Lock & WHFB - Windows 11 Intune 3.0.0 | Cloned policy from CIS (L1) Device Lock & WHFB - Windows 11 Intune 3.0.0 |
| GoLive - CIS (L1) Firewall - Windows 11 Intune 3.0.0" | Cloned policy from CIS (L1) Firewall - Windows 11 Intune 3.0.0 |
| GoLive - CIS (L1) Section 1 - 3.9.1.1 - Windows 11 Intune 3.0.0 | Cloned policy from CIS (L1) Section 1 - 3.9.1.1 - Windows 11 Intune 3.0.0 |
| GoLive - CIS (L1) Section 22 - 80 - Windows 11 Intune 3.0.0 | Cloned policy from CIS (L1) Section 22 - 80 - Windows 11 Intune 3.0.0 |
| GoLive - CIS (L1) System Services - Windows 11 Intune 3.0.0 | Cloned policy from CIS (L1) System Services - Windows 11 Intune 3.0.0 |
| GoLive - CIS (L1) User Rights - Windows 11 Intune 3.0.0 | Cloned policy from CIS (L1) User Rights - Windows 11 Intune 3.0.0 |
| GoLive - Deploy wallpaper | Change the default Windows wallpaper to a custom wallpaper. You can clone and change the URL to point to an image of your choice. |
| GoLive - DeviceGuard | ** Do not modify without prior approval **  Baseline:  - MDM Security Baseline Version November 2021 |
| GoLive - Experience - MODIFY |  |
| GoLive - Experience | ** Do not modify without prior approval **  Baseline:  - MDM Security Baseline Version November 2021 |
| GoLive - Global Edge Settings |  |
| GoLive - GoogleChrome_MODIFY |  |
| GoLive - GoogleChrome |  |
| GoLive - LAPS |  |
| GoLive - LocationServices | ** Do not modify without prior approval **Baseline:- Enables Location Services to allow for "Automatic Time Zone" top work correctly. |
| GoLive - MicrosoftEdge - MODIFY |  |
| GoLive - OneDrive_MODIFY |  |
| GoLive - Outlook |  |
| GoLive - Power_MODIFY |  |
| GoLive - Set OneDrive client to add SharePoint Online location | Let the OneDrive client add a SharePoint Online team site library to Windows Explorer, to improve usability for users. Please set your customer's SharePoint Online Library ID by overriding the $InheritedVars.SPOLibraryID variable at the customer level. To get the required library ID, please refer to https://docs.microsoft.com/en-us/onedrive/use-group-policy#AutoMountTeamSites. |
| GoLive - Storage | Customer Config - Enabling Storage Sense  |
| GoLive - Windows Autopilotv2 device preparation policies |  |

## ./windows-asr

| Name | Description |
| ---- | ----------- |
| 0_Prod-Windows-ASR-AllAudit-Device | All Attack Surface Reduction rules in Audit mode. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| 1_Prod-Windows-ASR-StandardBlock-Device | Standard Protection Attack Surface Reduction rules in Block mode, with all other ASR rules in Audit mode. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |
