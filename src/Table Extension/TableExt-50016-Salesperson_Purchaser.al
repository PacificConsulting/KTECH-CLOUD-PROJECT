tableextension 50016 salesperson_purchase_ext extends "Salesperson/Purchaser"
{
    fields
    {
        field(50001; "Purchahse/Sales Person"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,"PurchasePesron","SalesPesron";
            OptionCaption = 'PurchasePesron,SalesPerson';
            //OptionCaptionML =ENU="PurchasePesron","SalesPerson",ENN=PurchasePesron,SalesPerson";
        }
        field(50002; "Commission Percentage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50003; "Commission Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        
        // Add changes to table fields here
    }

    var
        myInt: Integer;
}