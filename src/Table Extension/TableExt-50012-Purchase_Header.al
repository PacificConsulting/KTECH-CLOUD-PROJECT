tableextension 50012 Purchase_Header_Ext extends "Purchase Header"
{
    fields
    {
        // Add changes to table fields here
        field(50001; UOM; Option)
        {
            DataClassification = ToBeClassified;

            OptionMembers = ,KG,NOS,LTR;
            OptionCaption = 'KG,NOS,LTR';
            //OptionCaptionML = ENU = ',KG,NOS,LTR';
        }
        field(50002; Designation; code[20])
        {
            DataClassification = ToBeClassified;
        }

    }

    var
        myInt: Integer;
}