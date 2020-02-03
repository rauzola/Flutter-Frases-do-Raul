import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Gentileza gera gentileza... porra nenhuma, vc é gentil com um monte de gente e só se fode.",
    "Se indireta matasse, muitos morreriam por engano.",
    "Fico impressionado com a minha capacidade de fingir que não tô nem aí quando na verdade quero jogar a pessoa de um penhasco.",
    "Usando google maps pra descobrir onde ta essa moral q vc acha q tem.",
    "Adorei sua opinião, vou colocar meu fone aqui mas pode continuar falando.",
    "Oi sumido quem vê pensa que você me procurou né.",
    "Você não é bonita, apenas sabe tirar foto.",
    "50 tons de não estou nem aí pra sua cara.",
    "Parece amor mas é só vontade de dar uns pega mesmo.",
    "Eu e paciência não estamos na mesma frase.",
    "- Enfia esse visualizado no teu cu."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt( _frases.length );
    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Raul"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        /*decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.red)
        ),*/
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/turn.jpg"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.blueGrey
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.deepPurpleAccent,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
        ),
    );
  }
}



















































