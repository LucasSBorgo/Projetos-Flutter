import 'package:flutter/material.dart';
import 'package:mini_projeto_04/route_generator.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    onGenerateRoute: route_generator.generateRoute,
  ));
}

