pageextension 50035 "GL Account Card" Extends "G/L Account Card"
{
    layout
    {
        addafter("Omit Default Descr. in Jnl.")
        {
            field("Positive Amount"; Rec."Positive Amount")

            {
                applicationarea = all;
                Caption = 'Only Positive Amount Allowed';
            }
        }
    }
}