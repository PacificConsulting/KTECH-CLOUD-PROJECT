tableextension 50010 Purchase_Recpt_Line_Ext extends "Purch. Rcpt. Line"
{
    fields
    {
        field(50005; "Alternate UOM Qty"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-0123';
        }
        field(50006; "Original PO"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'CAS-14699-L6F0N7';
        }
        // Add changes to table fields here
    }

    var
        myInt: Integer;
}