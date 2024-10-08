---
external help file: Evergreen-help.xml
Module Name: Evergreen
online version: https://stealthpuppy.com/evergreen/help/en-US/Start-EvergreenLibraryUpdate/
schema: 2.0.0
---

# Start-EvergreenLibraryUpdate

## SYNOPSIS

Invokes the update and download of application installers in an Evergreen library. `Start-EvergreenLibraryUpdate` reads the library manifest (`EvergreenLibrary.json`) which defines the applications in the library and uses `Get-EvergreenApp` and `Save-EvergreenApp` to download the latest installers to the library.

## SYNTAX

```
Start-EvergreenLibraryUpdate [-Path] <FileInfo> [-Proxy <String>] [-ProxyCredential <PSCredential>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION

An Evergreen library can be used to maintain multiple versions of application installers, rather than always using the latest installer. An Evergreen library allows you to install the version of an application required for a specific environment including rolling back to a previous version of an application. An Evergreen library also enables you to build an image build without requiring internet access, by downloading the application installers to the library and then using those installers during the image build process.

`Start-EvergreenLibraryUpdate` invokes the update and download of application installers in an Evergreen library. `Start-EvergreenLibraryUpdate` reads the library manifest (`EvergreenLibrary.json`) which defines the applications in the library and uses `Get-EvergreenApp` and `Save-EvergreenApp` to download the latest installers to the library.

## EXAMPLES

### EXAMPLE 1

```powershell
Start-EvergreenLibraryUpdate -Path "\\server\EvergreenLibrary"
```

Description:
`Start-EvergreenLibraryUpdate` reads the library manifest `EvergreenLibrary.json` located in \\server\EvergreenLibrary which defines the applications for that library. It uses `Get-EvergreenApp` and `Save-EvergreenApp` to download the latest installers to the library.

## PARAMETERS

### -Path

Specifies the path to the Evergreen library. The path must include EvergreenLibrary.json, in the expected structure, which defines the applications to be stored in the library.

```yaml
Type: FileInfo
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WhatIf

Shows what would happen if the cmdlet runs.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm

Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Proxy

Specifies a proxy server for the request, rather than connecting directly to the internet resource. Enter the URI of a network proxy server

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProxyCredential

Specifies a user account that has permission to use the proxy server that is specified by the Proxy parameter. The default is the current user.

Type a user name, such as User01 or Domain01\User01, User@Domain.Com, or enter a `PSCredential` object, such as one generated by the `Get-Credential` cmdlet.

This parameter is valid only when the Proxy parameter is also used in the command.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

Start-EvergreenLibraryUpdate accepts a string parameter.

## OUTPUTS

## NOTES

Site: https://stealthpuppy.com/evergreen

Author: Aaron Parker

Twitter: @stealthpuppy

## RELATED LINKS

[Update an Evergreen library](https://stealthpuppy.com/evergreen/updatelibrary/)
