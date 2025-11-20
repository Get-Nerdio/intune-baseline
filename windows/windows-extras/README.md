# windows-extras

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

