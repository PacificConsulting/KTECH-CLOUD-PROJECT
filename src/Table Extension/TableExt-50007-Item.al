tableextension 50007 Item_Ext extends Item
{
    fields
    {
        field(50015; "Technical Function/s"; Text[250])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL0024';
        }
        field(50014; "Pack Size"; Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL0024';
        }
        field(50010; "Tolerance"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'RSPL 0123';
        }
        field(50013; "Main Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item."No." WHERE("Main Item" = FILTER(true));
        }
        field(50000; "QC Check"; Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL QC 2.0';
        }
        field(50001; Synonym; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL QC 2.0';
        }
        field(50002; "CAS No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL QC 2.0';
        }
        field(50003; "Mol. Formula"; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL QC 2.0';
        }
        field(50004; "Mol. Weight"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL QC 2.0';
        }
        field(50005; "Mol. Structure"; BLOB)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL QC 2.0';
        }
        field(50006; "Rejected Inventory"; Decimal)
        {
            Description = 'PCPL QC 2.0';
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                        Positive = FILTER(true)/*,
                                                                        "QC Status " = FILTER("Rejected")*/));
            FieldClass = FlowField;
            Editable = false;
        }
        field(50007; "Accepted Inventory"; Decimal)
        {

            Description = 'PCPL QC 2.0';
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                        Positive = FILTER(true)/*,
                                                                        "QC Status" = FILTER(Approved)*/));
            FieldClass = FlowField;
            Editable = false;
        }
        field(50008; "Quarantine Inventory"; Decimal)
        {

            Description = 'PCPL QC 2.0';
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                        Positive = FILTER(true)/*,
                                                                        "QC Status" = FILTER(WIP)*/));
            FieldClass = FlowField;
            NotBlank = false;
        }
        field(50009; "Responsibility Center"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Responsibility Center';
            //CaptionML = ENU='Responsibility Center',ENN ='Responsibility Center'  ;
            TableRelation = "Responsibility Center";
        }
        field(50011; " Blocked Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,Indent,Purchase;
            OptionCaption = ',Indent, Purchase';
            //OptionCaptionML = ENU ='Indent,Purchase';

        }
        field(50012; "Main Item"; Boolean)
        {
            DataClassification = ToBeClassified;

        }


    }


    var
        myInt: Integer;
}