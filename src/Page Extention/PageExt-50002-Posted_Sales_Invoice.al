pageextension 50002 Posted_Sales_Invoice_Extn extends "Posted Sales Invoice"
{
    layout
    {
        addafter("Sell-to Customer Name")
        {
            field("CC Attched"; Rec."CC Attched")
            {
                ApplicationArea = all;
            }
            field("Booking To"; Rec."Booking To")
            {
                ApplicationArea = all;
            }
            field("Customer Order No."; Rec."Customer Order No.")
            {
                ApplicationArea = all;
            }
            field("Do No."; Rec."Do No.")
            {
                ApplicationArea = all;
            }

        }
        // Add changes to page layout here
    }

    actions
    {
        addfirst(processing)
        {
            action("Tax Invoice")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                Image = Print;
                Caption = 'Tax Invoice';
                trigger OnAction()
                var
                    SIH: Record "Sales Invoice Header";
                begin
                    SIH.Reset();
                    SIH.SetRange("No.", rec."No.");
                    if SIH.FindFirst then
                        REPORT.RUNMODAL(50017, TRUE, TRUE, SIH);


                end;
            }
            action("FSR Report Replica2 NEW")
            {
                ApplicationArea = ALL;
                Promoted = TRUE;
                PromotedCategory = Process;
                Image = Print;
                Caption = 'FSR Report Replica2 NEW';
                trigger OnAction()
                var
                    SIH: Record "Sales Invoice Header";
                begin
                    SIH.RESET;
                    SIH.SETRANGE(SIH."No.", rec."No.");
                    REPORT.RUNMODAL(50031, TRUE, TRUE, SIH);
                end;
            }
        }
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}