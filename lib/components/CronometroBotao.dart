import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const CronometroBotao(
      {super.key, required this.icone, required this.texto, this.click});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            Colors.black, // Define a cor de fundo do botão como preto
      ),
      child: Row(
        children: [
          Icon(
            icone,
            size: 35,
            color: Colors.white,
          ),
          const SizedBox(width: 8), // Adiciona espaço entre o ícone e o texto
          Text(
            texto,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
