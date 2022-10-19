tableextension 50009 Purchase_Line_Ext extends "Purchase Line"
{
    fields
    {
        // Add changes to table fields here
        field(50005; "Alternate UOM Qty"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-0123';
            trigger OnValidate()
            var
                vItem: Record Item;
            begin
                IF vItem.GET("No.") THEN;
                "Alternate UOM Qty" := "Alternate UOM Qty" * (vItem.Tolerance / 100);

            end;
        }
        field(50006; "Original PO"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50011; "No. of Packs"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50012; "Pack Size"; Decimal)
        {
            DataClassification = ToBeClassified;
        }



    }

    var
        myInt: Integer;
}