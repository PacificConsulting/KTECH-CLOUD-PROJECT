pageextension 50011 Transfer_Order_sunform extends "Transfer Order Subform"
{
    layout
    {
        addafter(Quantity)
        {
            field("Identification No."; Rec."Identification No.")
            {
                ApplicationArea = all;
            }
            field("No. of Packages"; Rec."No. of Packages")
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