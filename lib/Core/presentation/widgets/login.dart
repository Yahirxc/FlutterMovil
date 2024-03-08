import 'dart:html';

import 'package:bhm_app/Core/presentation/screens/Homeview.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  // Loginpage({super.key})
  @override
  _Loginpage createState() => _Loginpage();

}



class _Loginpage extends State<Loginpage>{
  bool ischecked=false;
   String celular = "";
   String contra = "";
  @override
  Widget build(BuildContext context){
  return Column(
    children: <Widget>[
       SizedBox(
        width: 150,
        height: 100,
        
        child: Image.network(
            '9131529.png'),
      ),
      TextField( decoration: InputDecoration(hintText: "Phone number"),
        controller: TextEditingController(text: celular),),
       TextField(decoration: InputDecoration(hintText: "Password"),
        controller: TextEditingController(text: contra),),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
        Checkbox(value: ischecked, onChanged:(newValue)=>{
        setState(()=> ischecked= newValue!),
        
        
        },
        checkColor: Color.fromRGBO(255, 255, 255, 1),
        fillColor:
        MaterialStateProperty.all(Color.fromRGBO(99, 0, 0, 1))),
        Text("Mantener sesion activa")
        ],),

              //  ElevatedButton(onPressed: (){}, child:Text(" APRIETAMELO",style: TextStyle(color: Colors.white),),style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(255, 34, 34, 1))),),
        
       ElevatedButton(
        onPressed: (){
          Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homeview()));
        }, 
        child:Text(" APRIETAMELO",style: TextStyle(color: Colors.white),),style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(255, 34, 34, 1))),),
       SizedBox(height: 20,)
       
       
    ],
  );
  }
}