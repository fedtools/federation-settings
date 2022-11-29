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

    ################################
    ### CAF Entity Categories ###
    ################################

    # v1.0
    # CAF does not have any specific federation level entity category elements at this time.
    # for reference as to what can appear in this file please see ../SWAMID/SWAMID_entityCategories.ps1


    $IssuanceTransformRuleCategories = @{}

  
    ###

  
    ###

    $IssuanceTransformRuleCategories
}