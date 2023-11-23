tableextension 50006 Customer_Ext extends Customer
{
    fields
    {
        field(50008; "URN No."; Code[17])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL50';
        }


        field(50003; "Mobile no."; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-25';
        }
        field(50004; "Direct No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-25';
        }
        field(50005; "Designation"; Text[20])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-25';
        }
        field(50002; "Application"; Code[80])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL/BRB';
            TableRelation = "Application For Customer".Code;
        }
        field(50000; "Parent Customer Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";
        }
        field(50001; "Credit limit of Parent"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50006; "Accounts Mail ID"; Code[80])
        {
            DataClassification = ToBeClassified;
        }
        field(50007; "Outstanding Mail"; Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-25';
        }
        field(50009; "K-Tech Mail Id "; Code[80])
        {
            DataClassification = ToBeClassified;
        }
        field(50010; "Accounts Person Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-064';
            Caption = 'Accounts Head ';
        }
        field(50011; "AP Number"; Text[10])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-064';
            Caption = 'Accts.Head No.';
            trigger OnValidate()
            var
                Position: Integer;
            begin
                IF (StrLen("AP Number") < 10) AND ("AP Number" <> '') then
                    Error('Phone NO. must be 10 digit');
                IF "AP Number" <> '' then begin
                    FOR Position := 1 to 10 do begin
                        case Position of
                            1 .. 10:
                                if not (CopyStr("AP Number", Position, 1) IN ['0' .. '9']) then
                                    Error('Phone No. must be numeric');
                        end;
                    end;
                end;
            end;
        }
        field(50012; "AP Email ID"; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-064';
            caption = 'Accts. Head Email';

            trigger OnValidate()
            var
                Pos: Integer;
            begin
                Pos := StrPos("AP Email ID", '@');

                IF (Pos = 0) AND ("AP Email ID" <> '') then
                    Error('Email ID is wrong');
            end;
        }
        field(50013; "Owner/ Director Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-064';
            Caption = ' Director ';
        }
        field(50014; "OD Number"; Text[10])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-064';
            Caption = ' Director No. ';
            trigger OnValidate()
            var
                Position: Integer;
            begin
                IF (StrLen("OD Number") < 10) AND ("OD Number" <> '') then
                    Error('Phone NO. must be 10 digit');
                IF "OD Number" <> '' then begin
                    FOR Position := 1 to 10 do begin
                        case Position of
                            1 .. 10:
                                if not (CopyStr("OD Number", Position, 1) IN ['0' .. '9']) then
                                    Error('Phone No. must be numeric');
                        end;
                    end;
                end;
            end;

        }
        field(50015; "OD Email ID"; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-064';
            Caption = 'Director Email ';
            trigger OnValidate()
            var
                Pos: Integer;
            begin
                Pos := StrPos("OD Email ID", '@');

                IF (Pos = 0) AND ("OD Email ID" <> '') then
                    Error('Email ID is wrong');
            end;

        }
        field(50016; "Production Person Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-064';
            Caption = 'Technical Head';
        }
        field(50017; "PP Number"; Text[10])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-064';
            Caption = 'Tech.Head No.';
            trigger OnValidate()
            var
                Position: Integer;
            begin
                IF (StrLen("PP Number") < 10) AND ("PP Number" <> '') then
                    Error('Phone NO. must be 10 digit');
                IF "PP Number" <> '' then begin
                    FOR Position := 1 to 10 do begin
                        case Position of
                            1 .. 10:
                                if not (CopyStr("PP Number", Position, 1) IN ['0' .. '9']) then
                                    Error('Phone No. must be numeric');
                        end;
                    end;
                end;
            end;

        }
        field(50018; "PP Email ID"; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'PCPL-064';
            Caption = 'Tech.Head Email ';

            trigger OnValidate()
            var
                Pos: Integer;
            begin
                Pos := StrPos("PP Email ID", '@');

                IF (Pos = 0) AND ("PP Email ID" <> '') then
                    Error('Email ID is wrong');
            end;

        }
    }

    var
        myInt: Integer;

}