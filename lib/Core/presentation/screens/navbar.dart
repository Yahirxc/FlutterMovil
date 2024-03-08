
import 'package:flutter/material.dart';


class Navbar extends StatelessWidget {
  const Navbar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children :[
          UserAccountsDrawerHeader(accountName: const Text ("Alejandro Yahir Chi Chi"),
           accountEmail: const Text ("yahir.chi.chi@gmail.com"),
           currentAccountPicture: CircleAvatar(
            child: ClipOval(child: Image.asset("imagen/descarga.jpeg"),),
           ),
           decoration: BoxDecoration(
            color: Colors.cyan
           ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Perfil"),
            ),
              ListTile(
            leading: Icon(Icons.file_upload),
            title: Text("Transferir"),
            ),

       
            
            
            
              ListTile(
            leading: Icon(Icons.settings),
            title: Text("Contactos"),
            ),

              ExpansionTile(
              leading: Icon(Icons.settings),
              title: Text("Configuracion"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              children: <Widget>[
                ListTile(
                  title: Text('Ajustes'),
                  onTap: () {
                  
                    Navigator.pop(context); 
                  },
                ),
                ListTile(
                  title: Text('Cerrar sesison'),
                  onTap: () {
                    Navigator.pop(context); 
                  },
                ),
              ],
            ),
   
            

             
        
        ],
      ),
    );
  }
}