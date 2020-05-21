#
# OpenAPI Petstore
# This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

A pet for sale in the pet store

.PARAMETER Id
No description available.

.PARAMETER Category
No description available.

.PARAMETER Name
No description available.

.PARAMETER PhotoUrls
No description available.

.PARAMETER Tags
No description available.

.PARAMETER Status
pet status in the store

.OUTPUTS

Pet<PSCustomObject>
#>

function Initialize-PSPet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Category},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${PhotoUrls},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Tags},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("available", "pending", "sold")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSPetstore => PSPet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$PhotoUrls) {
            throw "invalid value for 'PhotoUrls', 'PhotoUrls' cannot be null."
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "category" = ${Category}
            "name" = ${Name}
            "photoUrls" = ${PhotoUrls}
            "tags" = ${Tags}
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Pet<PSCustomObject>

.DESCRIPTION

Convert from JSON to Pet<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Pet<PSCustomObject>
#>
function ConvertFrom-PSJsonToPet {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSPetstore => PSPet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `name` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property `name` missing." 
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "photoUrls"))) {
            throw "Error! JSON cannot be serialized due to the required property `photoUrls` missing." 
        } else {
            $PhotoUrls = $JsonParameters.PSobject.Properties["photoUrls"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "category"))) { #optional property not found
            $Category = $null
        } else {
            $Category = $JsonParameters.PSobject.Properties["category"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "category" = ${Category}
            "name" = ${Name}
            "photoUrls" = ${PhotoUrls}
            "tags" = ${Tags}
            "status" = ${Status}
        }

        return $PSO
    }

}

