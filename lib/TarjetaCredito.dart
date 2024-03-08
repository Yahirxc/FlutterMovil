import 'package:bhm_app/Core/presentation/widgets/widgetOneCard..dart';
import 'package:flutter/material.dart';

void main ()=>((const TarjetaCredito()));

class TarjetaCredito extends StatelessWidget {
  const TarjetaCredito({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tarjeta(),
    );
  }
}

class Tarjeta extends StatelessWidget {
  const Tarjeta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TARJETA DE CREDITO'),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 350,
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.5),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [BoxShadow(color: const Color.fromARGB(255, 216, 69 , 69),spreadRadius: 2, blurRadius: 4, offset:Offset(0,0)),]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // widgetOneCard(),
              widgetTwoCard(),
              // const WidgetUltimo()
            ],
          ),
        ),
      ),
    );
  }
}