import 'package:flutter/material.dart';
import 'package:flutter_application_1/visualizador_widget.dart';
import 'package:provider/provider.dart';

import 'Calculadora_provider.dart';
import 'botonera_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: ChangeNotifierProvider<CalculadoraProvider>(
          create: (context) => CalculadoraProvider(),
          child: Column(
            children: const [
              VisualizadorWidget(),
              BotoneraWidget(),
            ],
          )),
    );
  }
}
