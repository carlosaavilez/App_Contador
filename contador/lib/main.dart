
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: contador(),
    )
  );
}

class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {

  int contador = 0;

  void increment(){
    setState(() {
      if (contador<30)
      {
    contador ++;
      }

    });
   
  }

  void decrement(){
    setState(() {
      if (contador>0)
      {
       contador --; 
      }

    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(image: AssetImage("imagens/restaurant.png"),
          fit: BoxFit.cover
          )
          ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(contador<30?"Pode Entrar!":"Casa Cheia!", style: TextStyle(fontSize: 30.0, color: Colors.white),),
          Text(contador.toString(), style: TextStyle(fontSize: 100.0, color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: increment, 
                child: Text("Entrar", style: TextStyle(fontSize: 17.0, color: Colors.black)),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100,100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)
                    )
              )),

              SizedBox(width: 64,),

              TextButton(
                onPressed: decrement, 
                child: Text("Saiu", style: TextStyle(fontSize: 17.0, color: Colors.black)),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100,100),
                  shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(24)
                  )
              )),
            ],
          )
        ],
      ),
      )
    );
  }
}