tableextension 50020 PurchasesPayablesSetupExt extends "Purchases & Payables Setup"
{
    fields
    {
        // Add changes to table fields here
        field(50000; "Rights to productionBOMs"; Code[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
            ValidateTableRelation = false;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}