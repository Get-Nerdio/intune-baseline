# windows-update

| Name | Description |
| ---- | ----------- |
| Windows Microsoft 365 Apps Updates Broad Device | Baseline:- Assign to group "Intune-Win-Corporate-Device-Dynamic"Sets Microsoft 365 Apps Update Deadline and Deferral.  |
| Windows Microsoft 365 Apps Updates Limited Device | Baseline:- Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned".Sets Microsoft 365 Apps Update Deadline and Deferral. This policy is required by the Windows Autopatch service. |
| Windows Microsoft 365 Apps Updates Preview Device | Baseline:- Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned".Sets Microsoft 365 Apps Update Deadline and Deferral. This policy is required by the Windows Autopatch service. |
| Windows Microsoft Edge Updates Broad Device | Baseline:- Assign to group "Intune-Win-Corporate-Device-Dynamic"Deploys Edge Stable Channel Updates. This policy is required by the Windows Autopatch service. |
| Windows Microsoft Edge Updates Limited Device | Baseline:- Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned".Deploys Edge Stable Channel Updates. This policy is required by the Windows Autopatch service. |
| Windows Microsoft Edge Updates Preview Device | Baseline:- Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned".Deploys Edge Beta Channel Updates. This policy is required by the Windows Autopatch service. |
| Windows Windows Autopatch ARM64 settings Device | Disables Compiled Hybrid PE (CHPE) — a unique prerequisite for Arm64 devices to enable Windows Autopatch. |
| Windows Windows Autopatch baseline settings | VBS (Virtualization-based security): VBS must be enabled to ensure secure installation of Hotpatch updates. |
| Windows Windows Update settings Device | Settings for Windows Update. Ensure Windows Update for Business reports have been configured for these settings to be applicable. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| Windows Windows Update Ring Broad Device | Baseline:- Assign to group "Intune-Win-Corporate-Device-Dynamic"- Quality update deferral period (days) - 3 |
| Windows Windows Update Ring Limited Device | Baseline:- Assign to group "Intune-Win-UpdateRingLimited-Device-Assigned". |
| Windows Windows Update Ring Preview Device | Baseline:- Assign to group "Intune-Win-UpdateRingPreview-Device-Assigned". |

