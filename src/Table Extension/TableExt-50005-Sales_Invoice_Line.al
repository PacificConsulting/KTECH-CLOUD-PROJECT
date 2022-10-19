tableextension 50005 Sales_Invoice_Line_Ext extends "Sales Invoice Line"
{
    fields
    {
        field(50000; "No. of Packages"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50001; Purity; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50023; "Packing Size"; Text[30])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL/0041';
        }
        field(50024; "Technical Function/s"; Text[250])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL/0041';
        }
        field(50005; "Commission Percentage"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL0024';
        }
        field(50006; "Commission Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL0024';
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

        // Add changes to table fields here
    }

    var
        myInt: Integer;
}