tableextension 50002 Transfer_Header_Ext extends "Transfer Header"
{
    fields
    {
        field(50000; "E-Way Bill No."; Code[70])
        {
            DataClassification = ToBeClassified;
        }
        field(50001; "E-Way Bill Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        // Add changes to table fields here
    }

    var
        myInt: Integer;
}