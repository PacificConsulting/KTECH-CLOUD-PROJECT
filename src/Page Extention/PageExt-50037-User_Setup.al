pageextension 50037 UserSetupExt extends "User Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter("Allow Deferral Posting From")
        {
            field("Production BOMs"; Rec."Production BOMs")
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