# microsoft-365apps

| Name | Description |
| ---- | ----------- |
| GoLive - Set OneDrive client to add SharePoint Online location | Let the OneDrive client add a SharePoint Online team site library to Windows Explorer, to improve usability for users. Please set your customer's SharePoint Online Library ID by overriding the $InheritedVars.SPOLibraryID variable at the customer level. To get the required library ID, please refer to https://docs.microsoft.com/en-us/onedrive/use-group-policy#AutoMountTeamSites. |
| GoLive - OneDrive_MODIFY |  |
| Windows Microsoft 365 Apps baseline Device | Configure Microsoft 365 Apps settings - validate channel. Assumes a single Microsoft 365 Apps package has been deployed, including Project and Visio - viewer mode is enabled so that users without a license can use these applications in viewer mode. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Windows Microsoft 365 Apps baseline User | Configure user targeted policy settings for the Microsoft 365 Apps. Apply to All Users (optionally with filters) or Entra ID user groups. |
| Windows Microsoft 365 Apps OneDrive Device | Configure OneDrive for Business including SSO and Known Folder Move. Important - Update tenant GUID from the Entra ID. Apply to All Devices (optionally with filters) or Entra ID device groups. |

