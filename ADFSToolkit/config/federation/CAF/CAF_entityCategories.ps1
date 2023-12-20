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

    # v2.2.1 
    # CAF adjusts the R&S entity category to be more strict to ensure accurate R&S ranking at https://release-check.edugain.org
    # for reference as to what can appear in this file please see ../SWAMID/SWAMID_entityCategories.ps1

    ### CAF Entity Category Research and Education

 # Special note: if you require edupersonAssurance, please update get-ADFSTkLocalManualSpSettings.ps1
 # to augment and add that extra value in for that specific service


 $IssuanceTransformRuleCategoriesCustomized = [Ordered]@{}

    $TransformRules = [Ordered]@{}

    $TransformRules.eduPersonPrincipalName = $Global:ADFSTkAllTransformRules.eduPersonPrincipalName
    $TransformRules.mail = $Global:ADFSTkAllTransformRules.mail
    $TransformRules.displayName = $Global:ADFSTkAllTransformRules.displayName
    $TransformRules.givenName = $Global:ADFSTkAllTransformRules.givenName
    $TransformRules.sn = $Global:ADFSTkAllTransformRules.sn
    $TransformRules.eduPersonScopedAffiliation = $Global:ADFSTkAllTransformRules.eduPersonScopedAffiliation

    
    $IssuanceTransformRuleCategoriesCustomized.Add("http://refeds.org/category/research-and-scholarship", $TransformRules)
 

 ###

    #return the adjusted entity categories to be processed accordingly
  
   $IssuanceTransformRuleCategoriesCustomized 

}
