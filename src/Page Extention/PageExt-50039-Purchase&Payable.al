pageextension 50039 PurchasesPayablesSetupExt extends "Purchases & Payables Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter("Check Multiple Posting Groups")
        {
            field("Rights to productionBOMs"; Rec."Rights to productionBOMs")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}