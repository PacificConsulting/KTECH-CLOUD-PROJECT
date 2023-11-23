tableextension 50018 "G/L Account Ext" extends "G/L Account"
{
    fields
    {
        field(50000; "Positive Amount"; boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}