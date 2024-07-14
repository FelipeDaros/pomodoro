import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pomodoro/store/pomodoro.store.dart';

class Entradatempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const Entradatempo(
      {super.key,
      required this.titulo,
      required this.valor,
      this.dec,
      this.inc});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: store.estaTrabalhando()
                    ? Colors.red
                    : Colors.green, // Define a cor de fundo do botão
              ),
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white, // Define a cor do ícone
              ),
            ),
            const SizedBox(
                width: 10), // Adiciona espaço entre o botão e o texto
            Text(
              '$valor min',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: inc,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: store.estaTrabalhando()
                    ? Colors.red
                    : Colors.green, // Define a cor de fundo do botão
              ),
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white, // Define a cor do ícone
              ),
            ),
          ],
        )
      ],
    );
  }
}
