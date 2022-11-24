function Import-ADFSTkIssuanceTransformRuleCategoriesFromFederation {
    param (
        [Parameter(Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            Position = 0)]
        $RequestedAttributes,
        [Parameter(Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            Position = 1)]
        $SubjectIDReq
    )

    if ($SubjectIDReq -eq 'any') {
        $SubjectIDReq = 'pairwise-id'
    } 

    ###########################################
    ###  Federation level Entity Categories ###
    ###########################################

    # v1.0
    # No specific federation level entity category elements at this time.
    # for reference as to what can appear in this file please see ../SWAMID/SWAMID_entityCategories.ps1


    $IssuanceTransformRuleCategories = @{}

  
    ###

  
    ###

    $IssuanceTransformRuleCategories
}