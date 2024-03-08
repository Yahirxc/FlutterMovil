import 'package:bhm_app/Core/domain/entities/card.dart';

class CardModel
{
  final String name;
   final String cardnumber;
   final int cvv;
   final String cardDate;

   CardModel({required this.name,required this.cardnumber,required this.cvv,required this.cardDate});
   factory CardModel.fromEntity(CardEntity card)
   {
    return CardModel(name: card.name, cardnumber: card.cardnumber, cvv: 0 , cardDate: card.cardDate);
   }

   void getcvv()
   {

   }
}