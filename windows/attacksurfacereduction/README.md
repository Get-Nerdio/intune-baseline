# attacksurfacereduction

| Name | Description |
| ---- | ----------- |
| 0_Prod-Windows-ASR-AllAudit-Device | All Attack Surface Reduction rules in Audit mode. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| 1_Prod-Windows-ASR-StandardBlock-Device | Standard Protection Attack Surface Reduction rules in Block mode, with all other ASR rules in Audit mode. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |
| 2_Prod-Windows-ASR-AllBlock-Device | Puts all rules into block mode - this includes 'Block execution of potentially obfuscated scripts' which affects AVD session hosts. https://learn.microsoft.com/en-us/defender-endpoint/attack-surface-reduction-rules-reference. Apply to All Devices (optionally with filters) or Entra ID device groups. |

