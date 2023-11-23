tableextension 50017 ship_to_address_ext extends "Ship-to Address"
{
    fields
    {
        // Add changes to table fields here
        field(50000; "E.C.C No"; Text[30])
        {
            DataClassification = ToBeClassified;
            Enabled = true;

        }
        field(50001; "T.I.N. No"; Text[30])
        {
            DataClassification = ToBeClassified;
            Enabled = true;
        }
        field(50002; "VAT No"; Text[30])
        {
            DataClassification = ToBeClassified;
            Enabled = true;
        }
        field(50003; "C.S.T.No"; Text[30])
        {
            DataClassification = ToBeClassified;
            Enabled = true;
        }
        field(50004; "P.A.N.No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Enabled = true;
        }
        field(50005; "Ship To GST Registration No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50006; "Other Consignee"; Boolean)
        {
            DataClassification = ToBeClassified;
        }

    }

    var
        myInt: Integer;
}