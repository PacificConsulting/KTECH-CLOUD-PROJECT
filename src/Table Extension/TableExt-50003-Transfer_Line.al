tableextension 50003 Transfer_Line_Ext extends "Transfer Line"
{
    fields
    {
        field(50000; "No. of Packages"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50001; "Identification No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        // Add changes to table fields here
    }

    var
        myInt: Integer;
}