import 'package:flutter/material.dart';

class ContatoView extends StatelessWidget {
  const ContatoView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/detalhe_contato.png'),
                  const Padding(
                    padding: EdgeInsets.only(left: 10), 
                    child: Text(
                      "Contatos", 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey,
                      ),
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "email@gmail.com"
              ),
              const SizedBox(height: 16),
              const Text(
                "WhatsApp: (19)9999-9999",
              ),
              const SizedBox(height: 16),
              const Text(
                "Telefone: (19)3636-6363",
              ),
            ],
          ),
        ),
      ),
    );
  }
}