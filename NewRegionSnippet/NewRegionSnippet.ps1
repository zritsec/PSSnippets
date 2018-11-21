
# ------------------------------------------------------------------------------------------------------

# Script: NewRegionSnippet.ps1

# Author: Zachari Rodrigue, Information Systems Security Specialist

# Description: Create a Ctrl+J ISESnippt to quickly add a region to keep your scripts organized

# Last Edit: 11/20/2018 7:30 PM

# Licensed under the MIT license. See LICENSE.txt file in the project root for full license information.

# ------------------------------------------------------------------------------------------------------

#region NewRegion

$Title = 'Region'
$Description = 'New Region Block'
$Author = 'Me'
$Text = @'
#region NewLocation

#endregion NewLocation

'@

New-IseSnippet -Title $Title -Text $Text -Description $Description  -Author $Author -Force

#endregion NewLocation

#region StartRegion

$Title = 'Start-Region'
$Description = 'Start a Region Block'
$Author = 'Me'
$Text = @'
#region StartLocation

'@

New-IseSnippet -Title $Title -Text $Text -Description $Description  -Author $Author -Force

#endregion StartLocation

#region StartRegion

$Title = 'End-Region'
$Description = 'End a Region Block'
$Author = 'Me'
$Text = @'
#endregion StartLocation

'@

New-IseSnippet -Title $Title -Text $Text -Description $Description  -Author $Author -Force

#endregion StartLocation
