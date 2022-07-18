import 'package:flutter/material.dart';

class EmpresaView extends StatelessWidget {
  const EmpresaView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/detalhe_empresa.png'),
                  const Padding(
                    padding: EdgeInsets.only(left: 10), 
                    child: Text(
                      "Sobre a Empresa", 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
            ],
          ),
        ),
      ),
    );
  }
}