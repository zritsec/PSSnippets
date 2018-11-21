
# ------------------------------------------------------------------------------------------------------

# Script: Set-TPM.ps1

# Author: Zachari Rodrigue, Information Systems Security Specialist

# Description: Set the status of the TPM Chip in BIOS on a Lenovo ThinkPad using WMI to "Active"

# Ref Link: https://support.lenovo.com/us/en/solutions/ht100612

# Last Edit: 11/20/2018 8:30 PM

# Licensed under the MIT license. See LICENSE.txt file in the project root for full license information.

# Prerequisite: Needs to run elevated

# ------------------------------------------------------------------------------------------------------

$pcName = "MyComputer"
(gwmi -ComputerName $pcName  -class Lenovo_SetBiosSetting –namespace root\wmi).SetBiosSetting("SecurityChip,Active")
(gwmi -ComputerName $pcName  -class Lenovo_SaveBiosSettings -namespace root\wmi).SaveBiosSettings()
