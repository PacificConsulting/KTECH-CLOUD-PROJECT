tableextension 50011 Sales_Receivable_Ext extends "Sales & Receivables Setup"
{
    fields
    {
        field(50001; "FSR No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(50002; "Over Due Mail"; Text[80])
        {
            DataClassification = ToBeClassified;
        }
        field(50003; Courier; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";

        }
        field(50004; Insurance; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";
        }
        field(50005; Frieght; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";
        }

        // Add changes to table fields here
    }

    var
        myInt: Integer;
}