import 'package:flutter/material.dart';
import 'package:flutter_application_1/Calculadora_provider.dart';
import 'package:provider/provider.dart';

class VisualizadorWidget extends StatefulWidget {
  const VisualizadorWidget({Key? key}) : super(key: key);

  @override
  State<VisualizadorWidget> createState() => _VisualizadorWidgetState();
}

class _VisualizadorWidgetState extends State<VisualizadorWidget> {
  CalculadoraProvider? cp;
  @override
  Widget build(BuildContext context) {
    cp = Provider.of<CalculadoraProvider>(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        title: Text(cp!.cadPant),
        trailing: IconButton(
          icon: const Icon(
            Icons.close,
          ),
          onPressed: _limpiarDatos,
        ),
      ),
    );
  }

  void _limpiarDatos() {
    cp!.limpiarDatos();
  }
}
