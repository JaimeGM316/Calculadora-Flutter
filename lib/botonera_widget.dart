import 'package:flutter/material.dart';
import 'package:flutter_application_1/Calculadora_provider.dart';
import 'package:provider/provider.dart';

class BotoneraWidget extends StatefulWidget {
  const BotoneraWidget({Key? key}) : super(key: key);

  @override
  State<BotoneraWidget> createState() => _BotoneraWidgetState();
}

class _BotoneraWidgetState extends State<BotoneraWidget> {
  CalculadoraProvider? cp;

  @override
  Widget build(BuildContext context) {
    cp = Provider.of<CalculadoraProvider>(context);
    List<String> numeros = [
      "7",
      "8",
      "9",
      "4",
      "5",
      "6",
      "1",
      "2",
      "3",
      "0",
      "+",
      "/",
      "-",
      "*",
      "=",
    ];
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: (MediaQuery.of(context).size.width / 3),
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: numeros.length,
        itemBuilder: (BuildContext context, int i) {
          return Expanded(
              child: ElevatedButton(
            onPressed: () {
              if (numeros[i] == '+') {
                cp!.op = '+';
                cp!.eventoMas();
              } else if (numeros[i] == '-') {
                cp!.eventoresta();
              } else if (numeros[i] == '*') {
                cp!.op = '*';
                cp!.eventomult();
              } else if (numeros[i] == '/') {
                cp!.op = '/';
                cp!.eventodiv();
              } else if (numeros[i] == '=') {
                cp!.eventoIgual();
              } else {
                cp!.setCadPant(numeros[i]);
              }
            },
            child: Text(numeros[i]),
          ));
        },
      ),
    );
  }
}
