import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Animalsounds());
}
class Animalsounds extends StatelessWidget {
  Expanded playSound(String soundName, String name,Color color,  image){
    return  Expanded(
      child: FlatButton(
        color:color,
        onPressed: (){
          final player = AudioCache();
          player.play('$soundName.wav');
        },
        child: Container(
          width: 900.0,
          height:120.0,
          decoration:BoxDecoration(
            image:DecorationImage(
              image:image,
              fit:BoxFit.cover,
            )
          ),
          child: Text('$name',
              style:TextStyle(
                fontFamily: 'Dekko',
                fontWeight:FontWeight.bold,
                color:Colors.black,

              )),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.white,
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget>[
             playSound('cats','Cat', Colors.brown.shade900,AssetImage('images/cat.png')),
             // playSound('dogs','Dogs',Colors.brown.shade900),
              playSound('elephant','Elephants',Colors.brown,AssetImage('images/elephant.png')),
              playSound('gorilla','Gorilla',Colors.brown.shade900,AssetImage('images/gorilla.png')),
              playSound('horses','Horses',Colors.brown,AssetImage('images/horse.png')),
              playSound('lion','Lion',Colors.brown.shade900,AssetImage('images/lion.png')),
            ]
          ),
        )
      )
    );
  }
}
