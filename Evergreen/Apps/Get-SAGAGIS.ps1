Function Get-SAGAGIS {
    <#
        .SYNOPSIS
            Get the current version and download URL for SAGA-GIS.

        .NOTES
            Author: Andrew Cooper
            Twitter: @adotcoop
    #>
    [OutputType([System.Management.Automation.PSObject])]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseSingularNouns", "", Justification="Product name is a plural")]
    [CmdletBinding(SupportsShouldProcess = $False)]
    param (
        [Parameter(Mandatory = $False, Position = 0)]
        [ValidateNotNull()]
        [System.Management.Automation.PSObject]
        $res = (Get-FunctionResource -AppName ("$($MyInvocation.MyCommand)".Split("-"))[1])
    )

    # Get latest version and download latest release via SourceForge API
    # Convert the returned release data into a useable object with Version, URI etc.
    $params = @{
        Uri          = $res.Get.Update.Uri
        Download     = $res.Get.Download
        MatchVersion = $res.Get.MatchVersion
    }
    $object = Get-SourceForgeRepoRelease @params
    Write-Output -InputObject $object
}
