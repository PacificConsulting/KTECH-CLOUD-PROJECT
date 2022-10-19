tableextension 50006 Customer_Ext extends Customer
{
    fields
    {
        field(50008; "URN No."; Code[17])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL50';
        }


        field(50003; "Mobile no."; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-25';
        }
        field(50004; "Direct No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-25';
        }
        field(50005; "Designation"; Text[20])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-25';
        }
        field(50002; "Application"; Code[80])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL/BRB';
            TableRelation = "Application For Customer".Code;
        }
        field(50000; "Parent Customer Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";
        }
        field(50001; "Credit limit of Parent"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50006; "Accounts Mail ID"; Code[80])
        {
            DataClassification = ToBeClassified;
        }
        field(50007; "Outstanding Mail"; Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-25';
        }

    }

    var
        myInt: Integer;
}