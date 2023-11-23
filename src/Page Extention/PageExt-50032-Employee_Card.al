pageextension 50032 Employee_Card_Extn extends "Employee Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Address)
        {
            field(Balance; Rec.Balance)
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