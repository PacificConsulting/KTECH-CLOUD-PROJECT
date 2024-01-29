tableextension 50019 UserSetupExt extends "User Setup"
{
    fields
    {
        // Add changes to table fields here
        field(50000; "Production BOMs"; Boolean)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                Recpnp: Record "Purchases & Payables Setup";
            begin
                Recpnp.Reset();
                Recpnp.Get();
                if Recpnp."Rights to productionBOMs" = UserId then begin

                end
                else begin
                    Error('You do not have permission.');
                end;


            end;

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