pageextension 50033 employee_List_Extn extends "Employee List"
{
    layout
    {
        // Add changes to page layout here
        addafter("Job Title")
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