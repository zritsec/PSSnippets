# ------------------------------------------------------------------------------------------------------

# Script: get-TPMstatus.ps1

# Author: Zachari Rodrigue, Information Systems Security Specialist

# Description: Get the status of the TPM Chip on a Lenovo ThinkPad using WMI

# Ref Link: https://support.lenovo.com/us/en/solutions/ht100612

# Last Edit: 11/20/2018 7:30 PM

# Licensed under the MIT license. See LICENSE.txt file in the project root for full license information.

# Prerequisite: Needs to run elevated

# ------------------------------------------------------------------------------------------------------

$pcName = "MyComputer"
gwmi -ComputerName $pcName -class Lenovo_BiosSetting -namespace root\wmi | ForEach-Object{if ($_.CurrentSetting -like "SecurityChip*") {return $_.CurrentSetting.replace(","," = ")}}
