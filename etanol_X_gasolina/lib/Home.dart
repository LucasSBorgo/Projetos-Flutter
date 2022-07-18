// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _gasController = TextEditingController();
  TextEditingController _etController = TextEditingController();
  String _resultado = "";

  void _calcular(){
    if(_formKey.currentState!.validate()){
      double gasolina = double.parse(_gasController.text);
      double etanol = double.parse(_etController.text);
     
      if((etanol/gasolina) >= 0.7){
        setState(() {
          _resultado = "A melhor escolha é colocar Gasolina!";
        });
      }else{
        setState(() {
          _resultado = "A melhor escolha é colocar Etanol!";
        });
      }
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade500,
        appBar: AppBar(
        title: const Text("Gasolina ou Etanol"),
        backgroundColor: Colors.amber.shade800,
      ),  
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/gasolina.png', 
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    controller: _gasController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "5.999",
                      labelText: "Preço Gasolina",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                    validator: (text){
                      return text!.isEmpty || double.parse(text) <= 0 ? "Obrigatório valor maior que 0" : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    controller: _etController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "4.999",
                      labelText: "Preço Etanol",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                    validator: (text){
                      return text!.isEmpty || double.parse(text) <= 0 ? "Obrigatório valor maior que 0" : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: (){
                    _calcular();
                    FocusScope.of(context).unfocus();
                  }, 
                  child: const Text(
                    "Calcular", 
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 24,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
                    child: Text(
                      _resultado,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),  
    );
  }
}