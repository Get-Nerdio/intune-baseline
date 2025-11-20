# macos-baseline

| Name | Description |
| ---- | ----------- |
| Prod-macOS-CompliancePolicy | Compliance policy for all macOS devices. Apply by default to All Users. Note - changing the device password requirements will force a password change on all existing devices that have received this policy |
| Prod-macOS-EntraIDSingleSignOn-Device | Enable Entra ID single sign-on |
| Prod-macOS-MicrosoftEdge-Custom-Device | Microsoft Edge preferences file for default settings and settings not available in the Settings Catalog. |
| Prod-macOS-MicrosoftEdge-Device | Baseline Microsoft Edge settings - enforce SmartScreen, sync, basic browser settings. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Prod-macOS-MicrosoftEdge-Extensions-Device | Configures extension settings in Microsoft Edge - prevents users from adding extensions, and configures a list of force installed extensions. Adds: Microsoft Editor, uBlock Origin, My Apps Secure Sign-in Extension. Also enables the Edge sidebar & Copilot default extensions. Apply to All Devices (optionally with filters) or Entra ID device groups. |

