import 'package:bhm_app/Core/domain/entities/card.dart';
import 'package:bhm_app/Core/presentation/widgets/login.dart';
import 'package:bhm_app/main.dart';
import 'package:flutter/material.dart';
import 'package:bhm_app/Core/data/models/userModel.dart';
import 'package:bhm_app/Core/domain/entities/user.dart';
import 'package:bhm_app/Core/domain/entities/card.dart';
import 'package:bhm_app/Core/data/models/cardModel.dart';

Widget widgetOneCard() {
  final  User user =User(name: "fitibank", lastname: "pepe", email: "hola@gmail.com", password: "0000");
     final UserModel userModel = UserModel.fromEntity(user);
   
  return Column(
    children: [
      
      
     Text(
        userModel.name,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      Row(
        children: [
          SizedBox(
              height: 40,
              width: 40,
              child: Image.network(
                  'https://www.shutterstock.com/image-illustration/credit-card-chip-silver-isolated-600nw-490291144.jpg')),
        ],
        
      ),
      
    ],
  );
}

Widget widgetTwoCard() {
   final  User user =User(name: "fitibank", lastname: "Yoshua", email: "hola@gmail.com", password: "0000");
     final UserModel userModel = UserModel.fromEntity(user);
     final CardEntity card = CardEntity(name: "hola", cardnumber: "9983530052", cvv: 0, cardDate: "2/30");
     final CardModel cardModel=CardModel.fromEntity(card);
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Loginpage(),
      // demo1(user: user),
      
      // Text(cardModel.cardnumber,
      //     style: TextStyle(color: Colors.white, fontSize: 25)),
      // Text(cardModel.cardDate, style: TextStyle(color: Colors.white, fontSize: 14)),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
      // ),
    ],
    
  );
  
}

Widget widgetTreeCard() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
   
      SizedBox(
        width: 50,
        height: 30,
        child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/2560px-Visa_Inc._logo.svg.png'),
      )
    ],
  );
}

class WidgetUltimo extends StatelessWidget {
  const WidgetUltimo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        
        SizedBox(
          width: 50,
          height: 30,
          child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/2560px-Visa_Inc._logo.svg.png'),
        )
      ],
    );
  }
}
