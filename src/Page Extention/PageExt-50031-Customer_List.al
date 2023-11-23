pageextension 50031 Customer_List_Ext extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field(Address; Rec.Address)
            {
                ApplicationArea = all;
            }
            field("Address 2"; Rec."Address 2")
            {
                ApplicationArea = all;
            }

            field(City; Rec.City)
            {
                ApplicationArea = all;
            }

            field("State Code"; Rec."State Code")
            {
                ApplicationArea = all;
            }
            field("E-Mail"; Rec."E-Mail")
            {
                ApplicationArea = all;
            }
            field("P.A.N. No."; Rec."P.A.N. No.")
            {
                ApplicationArea = all;
            }
            field("GST Registration No."; Rec."GST Registration No.")
            {
                ApplicationArea = all;
            }
            field("GST Registration Type"; Rec."GST Registration Type")
            {
                ApplicationArea = all;
            }
            field("GST Customer Type"; Rec."GST Customer Type")
            {
                ApplicationArea = all;
            }

        }
        addafter(Contact)
        {
            field("Accounts Person Name"; Rec."Accounts Person Name")
            {
                ApplicationArea = all;
            }
            field("AP Number"; Rec."AP Number")
            {
                ApplicationArea = all;
            }
            field("AP Email ID"; Rec."AP Email ID")
            {
                ApplicationArea = all;
            }
            field("Owner/ Director Name"; Rec."Owner/ Director Name")
            {
                ApplicationArea = all;
            }
            field("OD Number"; Rec."OD Number")
            {
                ApplicationArea = all;
            }
            field("OD Email ID"; Rec."OD Email ID")
            {
                ApplicationArea = all;
            }
            field("Production Person Name"; Rec."Production Person Name")
            {
                ApplicationArea = all;
            }
            field("PP Number"; Rec."PP Number")
            {
                ApplicationArea = all;
            }
            field("PP Email ID"; Rec."PP Email ID")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}