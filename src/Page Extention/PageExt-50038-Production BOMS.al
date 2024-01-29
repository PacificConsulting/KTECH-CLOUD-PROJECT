pageextension 50038 ProductionBOMListExt extends "Production BOM"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        RecUserSetup: Record "User Setup";

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        RecUserSetup.Reset();
        RecUserSetup.SetRange("User ID", UserId);
        RecUserSetup.SetRange("Production BOMs", true);
        if RecUserSetup.FindFirst() then begin

        end
        else begin
            Error('Access Denied');
        end;

        // RecUserSetup.Get(UserId);
        // if RecUserSetup."Production BOMs" = false then
        //     CurrPage.Editable := false;




    end;
}