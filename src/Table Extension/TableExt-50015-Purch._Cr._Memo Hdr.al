tableextension 50015 Purch_Cr_Memo_Hdr_Ext extends "Purch. Cr. Memo Hdr."
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