// pageextension 50034 Contra_voucher extends "Contra Voucher"
// {
//     layout
//     {
//         Modify(Amount)
//         {
//             Trigger OnAfterValidate()
//             begin
//                 IF Rec.Amount > 20000 then
//                     error('Amount should not be allowed more then 20000');
//             end;
//         }
//     }

//     actions
//     {
//     //     modify(Post)
//     //     {
//     //         trigger OnBeforeAction()
//     //         Var
//     //             ConGen: record 81;
//     //             TotAmt: decimal;
//     //             GLAccount: record "G/L Account";
//     //         begin
//     //             Clear(TotAmt);
//     //             GLAccount.Reset();
//     //             IF GLAccount.GET(Rec."Account No.") then begin
//     //                 IF GLAccount."Positive Amount" then begin
//     //                     ConGen.Reset();
//     //                     ConGen.SetRange("Journal Template Name", 'CONTRA VO');
//     //                     ConGen.SetRange("Journal Batch Name", 'DEFAULT');
//     //                     ConGen.SetRange("Document No.", rec."Document No.");
//     //                     ConGen.SetRange("Account Type", ConGen."Account Type"::"G/L Account");
//     //                     ConGen.SetRange("Account No.", GLAccount."No.");
//     //                     IF ConGen.findset then
//     //                         repeat
//     //                             TotAmt += ConGen.Amount;
//     //                         until ConGen.next() = 0;
//     //                     GLAccount.CalcFields(Balance);
//     //                     IF TotAmt > GLAccount.Balance then
//     //                         Error('You cannot post more then %1 amount for G/L Account 103151 your current amoun is %2', GLAccount.Balance, TotAmt);
//     //                 end;
//     //             end;
//     //         end;
//     //     }
//     // }


// }