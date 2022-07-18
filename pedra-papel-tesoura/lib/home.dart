import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get image => null;

  String _resultado = "";
  String _appImage = 'vazio';

  void _jogadaApp(String jogador){
    List<String> jogadas = ['pedra', 'papel', 'tesoura'];
    int app = Random().nextInt(3);

    switch(jogadas[app]){
      case "pedra":
        _appImage = "pedra";
        if(jogador == "pedra"){
          setState(() {
            _resultado = "EMPATE!";
          });
        } else if(jogador == "papel"){
          setState(() {
            _resultado = "VITÓRIA";
          });
        } else{
          setState(() {
            _resultado = "DERROTA!";
          });
        }
        break;

      case "papel":
        _appImage = "papel";
        if(jogador == "papel"){
          setState(() {
            _resultado = "EMPATE!";
          });
        } else if(jogador == "tesoura"){
          setState(() {
            _resultado = "VITÓRIA";
          });
        } else{
          setState(() {
            _resultado = "DERROTA!";
          });
        }
        break;
      case "tesoura":
        _appImage = "tesoura";
        if(jogador == "tesoura"){
          setState(() {
            _resultado = "EMPATE!";
          });
        } else if(jogador == "pedra"){
          setState(() {
            _resultado = "VITÓRIA!";
          });
        } else{
          setState(() {
            _resultado = "DERROTA!";
          });
        }
        break;
    }
  }

  Color getColor() {
    if(_resultado == "VITÓRIA!"){
      return Colors.green;
    } else if (_resultado == "DERROTA!"){
      return Colors.red;
    } else {
      return Color.fromARGB(255, 71, 71, 71);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pedra x Papel x Tesoura"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent.shade400,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 32, bottom: 16),
        color: Colors.white,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('image/$_appImage.png', width: 140, height: 140,),
          Text(
            'Faça sua escolha!',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 110,
                onPressed: (){
                  _jogadaApp('pedra');
                }, 
                icon: Image.asset('image/pedra.png'),
              ),
              IconButton(
                iconSize: 110,                
                onPressed: (){
                  _jogadaApp('papel');
                }, 
                icon: Image.asset('image/papel.png'),
              ),
              IconButton(
                iconSize: 110,
                onPressed: (){
                  _jogadaApp('tesoura');
                }, 
                icon: Image.asset('image/tesoura.png'),
              ),
            ],
          ),
          Text(
            _resultado,
            style: TextStyle(
              fontSize: 30,
              color: getColor(),
            ),
          ),
        ],
      ),
      ),
    );
  }
}