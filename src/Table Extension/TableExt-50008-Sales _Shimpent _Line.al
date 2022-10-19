tableextension 50008 Sales_Shipment_Line_Ext extends "Sales Shipment Line"
{
    fields
    {
        // Add changes to table fields here
        field(50000; "No. of Packages"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50001; Purity; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50003; "Marks and Nos/Container No"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(50004; "No and Kind of Package"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(50022; "Customer Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50025; "Identification Mark"; Text[30])
        {
            DataClassification = ToBeClassified;
        }

    }

    var
        myInt: Integer;
}