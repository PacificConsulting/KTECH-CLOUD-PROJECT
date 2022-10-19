tableextension 50004 Sales_Invoice_Header_Ext extends "Sales Invoice Header"
{
    fields
    {
        field(50050; "CC Attched"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(50051; "Booking To"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(50022; "Customer Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50052; "Do No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50060; "Referenece"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Direct,Agent,Consultant,lnstitution;
            OptionCaption = 'Direct,Agent,Consultant,lnstitution';
            Description = 'PCPL/0025';
            //OptionCaptionML = ENU = 'Direct,Agent,Consultant,lnstitution';


        }
        field(50061; "Mode Of Communication"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = PH,FAX,Mail;
            OptionCaption = 'PH,FAX,Mail';
            Description = 'PCPL/0025';

        }
        field(50062; "Product Application Field"; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL/0025';
            OptionMembers = "Paints & Coatings","Printing lnks","Plastics (Polymers)","Rubber","Pigments","Textile","Leather","Pulp & Paper","Oil-field","Others";
            OptionCaption = 'Paints & Coatings,Printing lnks,Plastics (Polymers),Rubber,Pigments,Textile,Leather,Pulp & Paper,Oil-field,Others';
        }
        field(50053; "Issue No"; Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL';
        }
        field(50054; "Issue Date"; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL';
        }
        field(50055; "Date of Inquiry"; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL';
        }
        field(50056; "Revision No"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50057; "Revision Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50058; "Transport Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL/0041';
        }
        field(50064; "Courier Name"; Text[30])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL/0041';
        }
        field(50065; "AWB No."; Code[10])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL/0041';
        }
        // Add changes to table fields here
    }

    var
        myInt: Integer;
        CheckLatestQst: Label 'Do you want to check the latest status of the electronic document?';

    procedure DocExchStatusDrillDown()
    var
        DocExchLinks: Codeunit "Doc. Exch. Links";
        DocExchServiceMgt: Codeunit "Doc. Exch. Service Mgt.";

    begin
        CASE "Document Exchange Status" OF
            "Document Exchange Status"::"Not Sent":
                EXIT;
            "Document Exchange Status"::"Sent to Document Exchange Service",
          "Document Exchange Status"::"Pending Connection to Recipient":
                IF CONFIRM(CheckLatestQst, TRUE) THEN
                //DocExchLinks.CheckAndUpdateDocExchInvoiceStatus(Rec); PCPL/NSW/07 131022
                //"Document Exchange Status"::"Delivered to Recipient": PCPL/NSW/07 131022
                BEGIN
                    HYPERLINK(DocExchServiceMgt.GetExternalDocURL("Document Exchange Identifier"));
                    EXIT;
                END;
        END;
    end;

    //ShowActivityLog;

}