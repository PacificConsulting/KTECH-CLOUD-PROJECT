tableextension 50013 Purchase_Rcpt_Header_Ext extends "Purch. Rcpt. Header"
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