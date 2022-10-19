tableextension 50014 Purch_Inv_Header_Ext extends "Purch. Inv. Header"
{
    fields
    {
        field(50002; Designation; code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}