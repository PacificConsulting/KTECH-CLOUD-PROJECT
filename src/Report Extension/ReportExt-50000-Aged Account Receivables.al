reportextension 50000 Aged_Accounts_Receivables_Ext extends "Aged Accounts Receivable"
{
    dataset
    {
        add(Customer)
        {
            column(Accounts_Person_Name; "Accounts Person Name")
            {

            }
            column(AP_Number; "AP Number")
            {

            }
            column(AP_Email_ID; "AP Email ID")
            {

            }


        }
        // Add changes to dataitems and columns here
    }

    requestpage
    {
        // Add changes to the requestpage here
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'mylayout.rdl';
        }
    }
}