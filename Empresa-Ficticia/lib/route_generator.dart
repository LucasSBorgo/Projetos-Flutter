import 'package:flutter/material.dart';
import 'package:mini_projeto_04/views/cliente.dart';
import 'package:mini_projeto_04/views/contato.dart';
import 'package:mini_projeto_04/views/empresa.dart';
import 'package:mini_projeto_04/views/home.dart';
import 'package:mini_projeto_04/views/servicos.dart';

class route_generator{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case "/": 
        return MaterialPageRoute(builder: (_) => const HomeView());
      case "/tela-empresa":
        return MaterialPageRoute(builder: (_) => const EmpresaView());
      case "/tela-servico":
        return MaterialPageRoute(builder: (_) => const ServicoView());
      case "/tela-contato":
        return MaterialPageRoute(builder: (_) => const ContatoView());
      case "/tela-cliente":
        return MaterialPageRoute(builder: (_) => const ClienteView());
      default:
        _erroRota();
    }
    throw '';
  }

  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Erro Rota"),
        ),
        body:const Text("Tela não encontrada"),
      );
    });
  }

}