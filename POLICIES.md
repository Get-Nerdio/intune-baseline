# Policies

## windows
 
 ### attacksurfacereduction
 
 | Name | Description |
| ---- | ----------- |
| 0_Prod-Windows-ASR-AllAudit-Device | All Attack Surface Reduction rules in Audit mode. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| 1_Prod-Windows-ASR-StandardBlock-Device | Standard Protection Attack Surface Reduction rules in Block mode, with all other ASR rules in Audit mode. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| 2_Prod-Windows-ASR-AllBlock-Device | Puts all rules into block mode - this includes 'Block execution of potentially obfuscated scripts' which affects AVD session hosts. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |
 
 ### avd-w365
 
 | Name | Description |
| ---- | ----------- |
| Windows-Avd-AllSessionHosts | Filter for all Azure Virtual Desktop session hosts - single session and multi-session |
| Windows-Avd-MultiSession | Filter for Virtual machines running Windows 10/11 multi-session on Azure Virtual Desktop |
| Windows-Avd-SingleSession | Filter for Azure Virtual Desktop single session machines |
| Windows-Windows365 | Filter for Windows 365 Cloud PCs |
| Prod-Windows-AzureVirtualDesktop-RemoteDesktop-Baseline-Device | Remote Desktop settings to apply to Azure Virtual Desktop and Windows 365 devices. Apply to All Devices (optionally with filters) or Entra ID device groups. |
 
 ### google-chrome
 
 | Name | Description |
| ---- | ----------- |
| Prod-Windows-GoogleChrome-Baseline-Device | Baseline application policy settings for Google Chrome. This policy will lockdown Chrome, including preventing signing into the browser with a Google account. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-GoogleChrome-Extensions-Baseline-Device | Configures extension settings in Google Chrome - prevents users from adding extensions, and configures a list of force installed extensions. Apply to All Devices (optionally with filters) or Entra ID device groups. |
 
 ### microsoft-365apps
 
 | Name | Description |
| ---- | ----------- |
| Prod-Windows-Microsoft365Apps-Baseline-Device | Configure Microsoft 365 Apps settings - validate channel. Assumes a single Microsoft 365 Apps package has been deployed, including Project and Visio - viewer mode is enabled so that users without a license can use these applications in viewer mode. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-Microsoft365Apps-Baseline-User | Configure user targeted policy settings for the Microsoft 365 Apps. Apply to All Users (optionally with filters) or Entra ID user groups. |
| Prod-Windows-MicrosoftOneDrive-Baseline-Device | Configure OneDrive for Business including SSO and Known Folder Move. Important - Update tenant GUID from the Entra ID. Apply to All Devices (optionally with filters) or Entra ID device groups. |
 
 ### microsoft-defender
 
 | Name | Description |
| ---- | ----------- |
| Prod-Windows-MicrosoftDefenderAntivirus-Baseline-Device | Microsoft Defender antivirus and antimalware settings. Note 'Local Admin Merge' is enabled. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftDefenderExclusions-Baseline-Device | Folder path exclusions to support Intune clients. Exclusions may need to be updated in MDE as well. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftDefenderUpdateControls-Device | Configures Microsoft Defender update channels. Apply to All Devices (optionally with filters) or Entra ID device groups. |
 
 ### microsoft-edge
 
 | Name | Description |
| ---- | ----------- |
| Prod-Windows-MicrosoftEdge-Baseline-Device | Baseline Microsoft Edge settings - enforce SmartScreen, sync, basic browser settings. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftEdge-Extensions-AVDW365-Baseline-Device | Configures extension settings in Microsoft Edge - prevents users from adding extensions, and configures a list of force installed extensions. Adds: Microsoft Editor, uBlock Origin, My Apps Secure Sign-in Extension, Multimedia Redirection. Also enables the Edge sidebar & Copilot default extensions. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftEdge-Extensions-Physical-Baseline-Device | Configures extension settings in Microsoft Edge - prevents users from adding extensions, and configures a list of force installed extensions. Adds: Microsoft Editor, uBlock Origin, My Apps Secure Sign-in Extension. Also enables the Edge sidebar & Copilot default extensions. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-MicrosoftEdge-ProgressiveWebApps-User | Configure list of force-installed Microsoft 365 Progessive Web Apps that have no Store or Win32 application equivalent. Apply to All Users (optionally with filters) or Entra ID user groups. |
 
 ### windows-CIS
 
 | Name | Description |
| ---- | ----------- |
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
 
 ### windows-compliance
 
 | Name | Description |
| ---- | ----------- |
| Prod-Windows-AllDevice-CompliancePolicy | User-based Windows compliance policy that applies to all default scenarios including physical Windows PCs. |
| Prod-Windows-AzureVirtualDesktop-CompliancePolicy | Device-based Windows compliance policy that applies to Azure Virtual Desktop session hosts - assign to All Devices with a filter that includes 'Windows-Avd-AllSessionHosts' |
| Prod-Windows-Windows365-CompliancePolicy | Compliance policy for Windows 365 Cloud PCs (for feature that are not supported, e.g. BitLocker). Target All Devices with a filter that includes 'Windows-Windows365'. |
 
 ### windows-extras
 
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
| GoLive - Skip Autopilot account setup page | From the Autopilot ESP, skip the account setup page if you have no user assigned apps to save time during initial deployment. Only device assigned application will be installed. |
| GoLive - Enable Endpoint Analytics | Enables the collection of data required to report on performance and productivity scores for endpoints. Please note this settings in this policy are required for NMM to show the Endpoint Analytics scores in the device properties.  For more information, please check: https://learn.microsoft.com/en-us/mem/analytics/overview |
| GoLive - Firewall_Rules_MODIFY | Leverage CIS (L1) Firewall - Windows 11 Intune 3.0.0 |
| GoLive - Windows Hello for Business | Replace this policy CIS (L1) Device Lock & WHFB - Windows 11 Intune 3.0.0  |
| GoLive - Add Local Admin | ** Do not modify without prior approval **  Baseline:  - Creates administrator group "MEM-Win-Admins-Assigned" of specified users on Windows devices.  Note: Verify "MEM-Win-Admins-Assigned" group within the "Configuration settings".  Assign: To device Groups  |
| GoLive - Baseline_MSFT |  |
| GoLive - BitLocker |  |
| GoLive - Deploy wallpaper | Change the default Windows wallpaper to a custom wallpaper. You can clone and change the URL to point to an image of your choice. |
| GoLive - DeviceGuard | ** Do not modify without prior approval **  Baseline:  - MDM Security Baseline Version November 2021 |
| GoLive - Experience - MODIFY |  |
| GoLive - Experience | ** Do not modify without prior approval **  Baseline:  - MDM Security Baseline Version November 2021 |
| GoLive - Global Edge Settings |  |
| GoLive - Windows Autopilotv2 device preparation policies |  |
| [WIN] Bitlocker for Fixed Drives Only | This policy enables BitLocker to fully encrypt fixed OS and data disks, based on AES 128-bit XTS. Keys will be stored in Azure AD and client-driven key rotation will be enabled. There's no block for write-access to unencrypted removable drives. |
| [WIN] Force Bitlocker on Fixed and Removable Drives |  |
| GoLive - GoogleChrome |  |
| GoLive - GoogleChrome_MODIFY |  |
| [WIN] LAPS | Enforces automatic management of Windows local admin accounts using Microsoft LAPS via Intune. Sets password complexity, length, and expiration; backs up credentials to secure directory; automates account management tasks; and resets passwords after local admin use. Intended for 'NerdAdmin' profile across all assigned Windows endpoints. Use to comply with modern endpoint security best practices and CIS benchmark recommendations. |
| GoLive - LocationServices | ** Do not modify without prior approval **Baseline:- Enables Location Services to allow for "Automatic Time Zone" top work correctly. |
| GoLive - MicrosoftEdge - MODIFY |  |
| GoLive - Set OneDrive client to add SharePoint Online location | Let the OneDrive client add a SharePoint Online team site library to Windows Explorer, to improve usability for users. Please set your customer's SharePoint Online Library ID by overriding the $InheritedVars.SPOLibraryID variable at the customer level. To get the required library ID, please refer to https://docs.microsoft.com/en-us/onedrive/use-group-policy#AutoMountTeamSites. |
| GoLive - OneDrive_MODIFY |  |
| GoLive - Outlook |  |
| GoLive - Power_MODIFY |  |
| GoLive - Storage | Customer Config - Enabling Storage Sense  |
 
 ### windows-features
 
 | Name | Description |
| ---- | ----------- |
| Windows-EnterpriseEducation | Filter for Windows 10/11 Enterprise or Education edition |
| Windows-VirtualMachines | Filter for Microsoft Hyper-V, VMware Workstation / Fusion, Parallels Desktop, Oracle VirtualBox |
| Prod-Windows-DeliveryOptimization-Baseline-Device | Windows 10/11 Delivery Optimization settings. Validate Windows Autopilot and application deployment functionality after applying to devices. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-DeviceLockSignIn-Baseline-Device | Configurations for device lock and sign-in. Apply to All Devices with optional features, or copy to create settings to apply to different device types |
| Prod-Windows-StorageSense-Baseline-Device | Storage Sense settings to clear disk space including OneDrive and Downloads folders. Note - this will remove files older than 60 days from the users' Downloads folder and Recycle Bin. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-WindowsUpdateSettings-Baseline-Device | Settings for Windows Update. Ensure Windows Update for Business reports have been configured for these settings to be applicable. Apply to All Devices (optionally with filters) or Entra ID device groups. |
 
 ### windows-security
 
 | Name | Description |
| ---- | ----------- |
| Prod-Windows-BitLocker | Windows BitLocker settings to enable encryption for fixed drives with the default AES 128 bit XTS encryption, enable encryption for standard users and backup of the key to Entra ID. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-CredentialGuard-Baseline-Device | Enable Hypervisor Code Protected Integrity and Credential Guard without UEFI lock for safe approach to this security setting. Use this policy as a baseline and when no other policies are managing this setting. Credential Guard will break authentication to Azure Files where virtual machines are using account keys instead of Kerberos. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-SecurityExperience-Baseline-Device | Windows Security Center settings and support contact into. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-Windows-SmartScreenPhishingProtection-Baseline-Device | Microsoft Defender SmartScreen settings for Windows Explorer (Windows 10, Windows 11), and Phishing Protection in Windows 11. Apply to All Devices (optionally with filters) or Entra ID device groups. |
 
 ### windows-update
 
 | Name | Description |
| ---- | ----------- |
| Prod-Windows-FeatureUpdates-25H2 |  |
| Prod-Windows-VBS-Baseline | VBS (Virtualization-based security): VBS must be enabled to ensure secure installation of Hotpatch updates. |
| (GoLive) Prod_Win_SC_M365App-Updates_Broad | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-Corporate-Device-Dynamic"Sets Microsoft 365 Apps Update Deadline and Deferral.  |
| (GoLive) Prod_Win_SC_M365App-Updates_Limited | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned".Sets Microsoft 365 Apps Update Deadline and Deferral. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_M365App-Updates_Preview | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned".Sets Microsoft 365 Apps Update Deadline and Deferral. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_EdgeUpdates_Broad | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-Corporate-Device-Dynamic"Deploys Edge Stable Channel Updates. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_EdgeUpdates_Limited | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned".Deploys Edge Stable Channel Updates. This policy is required by the Windows Autopatch service. |
| (GoLive) Prod_Win_SC_EdgeUpdates_Preview | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned".Deploys Edge Beta Channel Updates. This policy is required by the Windows Autopatch service. |
| Prod-Win-Updates-Hotpatch | What is Hotpatch
Hotpatch updates are Monthly B release security updates that can be installed without requiring you to restart the device. Hotpatch updates are designed to reduce downtime and disruptions. By minimizing the need to restart, these updates help ensure faster compliance, making it easier for organizations to maintain security while keeping workflows uninterrupted.

The key benefits are:

Hotpatch updates streamline the installation process and enhance compliance efficiency.
No changes are required to your existing update ring configurations. Your existing ring configurations are honored alongside Hotpatch policies.
The Hotpatch quality update report provides a per policy level view of the current update statuses for all devices that receive Hotpatch updates.
 

Eiligible devices:

Operating System: Devices must be running Windows 11 24H2 or later.
VBS (Virtualization-based security): VBS must be enabled to ensure secure installation of Hotpatch updates.
Latest Baseline Release: Devices must be on the latest baseline release version to qualify for Hotpatch updates. Microsoft releases Baseline updates quarterly as standard cumulative updates.
 

Release cycles:

Baseline Release Months: January, April, July, October.
 |
| (GoLive) Prod_Win_WindowsUpdates_Broad | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-Corporate-Device-Dynamic"- Quality update deferral period (days) - 3 |
| (GoLive) Prod_Win_WindowsUpdates_Limited | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned". |
| (GoLive) Prod_Win_WindowsUpdates_Preview | ** Do not modify without prior approval **Baseline:- Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned". |
 
 ## macos
 
 ### macos-baseline
 
 | Name | Description |
| ---- | ----------- |
| Prod-macOS-CompliancePolicy | Compliance policy for all macOS devices. Apply by default to All Users. Note - changing the device password requirements will force a password change on all existing devices that have received this policy |
| Prod-macOS-EntraIDSingleSignOn-Device | Enable Entra ID single sign-on |
| Prod-macOS-MicrosoftEdge-Custom-Device | Microsoft Edge preferences file for default settings and settings not available in the Settings Catalog. |
| Prod-macOS-MicrosoftEdge-Device | Baseline Microsoft Edge settings - enforce SmartScreen, sync, basic browser settings. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-macOS-MicrosoftEdge-Extensions-Device | Configures extension settings in Microsoft Edge - prevents users from adding extensions, and configures a list of force installed extensions. Adds: Microsoft Editor, uBlock Origin, My Apps Secure Sign-in Extension. Also enables the Edge sidebar & Copilot default extensions. Apply to All Devices (optionally with filters) or Entra ID device groups. |
 
 ### macos-extras
 
 |  |
||
 

