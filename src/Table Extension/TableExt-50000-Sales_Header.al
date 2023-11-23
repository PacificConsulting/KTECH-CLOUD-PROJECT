tableextension 50000 Sales_Header_Ext extends "Sales Header"
{
    fields
    {
        field(50022; "Customer Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50050; "CC Attched"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(50051; "Booking To"; Text[250])
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
            OptionCaption = ' Direct,Agent,Consultant,lnstitution';
            Description = 'PCPL-25';
            //OptionCaptionML = ENU = 'Direct,Agent,Consultant,lnstitution', ENN = 'Direct,Agent,Consultant,lnstitution';
        }
        field(50061; "Mode Of Communication"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = PH,FAX,Mail;
            OptionCaption = 'PH,FAX,Mail';
            Description = 'PCPL-25';
            // OptionCaptionML = ENU = 'PH,FAX,Mail', ENN = 'PH,FAX,Mail;

        }
        field(50062; "Product Application Field"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","Paints & Coatings","Printing lnks","Plastics (Polymers)","Rubber","Pigments","Textile","Leather","Pulp & Paper","Oil-field","Others";
            OptionCaption = ' ,Paints & Coatings,Printing lnks,Plastics (Polymers),Rubber,Pigments,Textile,Leather,Pulp & Paper,Oil-field,Others';
            Description = 'PCPL-25';
            //OptionCaptionML =ENU='Paints & Coatings,Printing lnks,Plastics (Polymers),Rubber,Pigments,Textile,Leather,Pulp & Paper,Oil-field,Others',ENN='Paints & Coatings,Printing lnks,Plastics (Polymers),Rubber,Pigments,Textile,Leather,Pulp & Paper,Oil-field Others';
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
        field(50063; FSR; Boolean)
        {
            DataClassification = ToBeClassified;
        }

    }

    var

        SalesHeader: Record 36;
        SalesSetup: Record 311;
        NoSeriesMgt: Codeunit 396;
        SalesHeader2: Record 36;
        Text051: Label 'The sales %1 %2 already exists.';


    //procedure AssistEditFSR(OldSalesHeader: Record "Sales Header"): Boolean
    procedure AssistEditFSR(OldSalesHeader: Record "Sales Header") Result: Boolean
    var
        SalesHeader2: Record "Sales Header";
        IsHandled: Boolean;
    begin
        IsHandled := false;

        if IsHandled then
            exit;

        with SalesHeader do begin
            Copy(Rec);
            GetSalesSetup();
            SalesSetup.TESTFIELD("FSR No.");
            //TestNoSeries();
            //if NoSeriesMgt.SelectSeries(GetNoSeriesCode(), OldSalesHeader."No. Series", "No. Series") then begin
            if NoSeriesMgt.SelectSeries(SalesSetup."FSR No.", OldSalesHeader."No. Series", "No. Series") then begin
                if ("Sell-to Customer No." = '') and ("Sell-to Contact No." = '') then begin
                    HideCreditCheckDialogue := false;
                    CheckCreditMaxBeforeInsert();
                    HideCreditCheckDialogue := true;
                end;
                NoSeriesMgt.SetSeries("No.");
                if SalesHeader2.Get("Document Type", "No.") then
                    Error(Text051, LowerCase(Format("Document Type")), "No.");
                Rec := SalesHeader;
                exit(true);
            end;
        end;
    end;

    /*
    WITH SalesHeader DO BEGIN
        COPY(Rec);
        SalesSetup.Get();
        SalesSetup.TESTFIELD("FSR No.");
        //TestNoSeries;
        //IF NoSeriesMgt.SelectSeries(GetNoSeriesCode,OldSalesHeader."No. Series","No. Series") THEN BEGIN
        IF NoSeriesMgt.SelectSeries(SalesSetup."FSR No.", OldSalesHeader."No. Series", "No. Series") THEN BEGIN
            IF ("Sell-to Customer No." = '') AND ("Sell-to Contact No." = '') THEN BEGIN
                HideCreditCheckDialogue := FALSE;
                CheckCreditMaxBeforeInsert;
                HideCreditCheckDialogue := TRUE;
            END;
            NoSeriesMgt.SetSeries("No.");
            IF SalesHeader2.GET("Document Type", "No.") THEN
                ERROR(Text051, LOWERCASE(FORMAT("Document Type")), "No.");
            Rec := SalesHeader;
            EXIT(TRUE);
        END;
    END;
    //PCPL-25
end;
*/

    local procedure GetSalesSetup()
    begin
        SalesSetup.Get();
    end;
}