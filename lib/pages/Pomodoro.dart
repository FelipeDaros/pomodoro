import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/Cronometro.dart';
import 'package:pomodoro/components/EntradaTempo.dart';
import 'package:provider/provider.dart';
import 'package:pomodoro/store/pomodoro.store.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro()),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Observer(
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Entradatempo(
                      titulo: 'Trabalho',
                      valor: store.tempoTrabalho,
                      inc: store.iniciado && store.estaTrabalhando()
                          ? null
                          : store.incrementarTempoTrabalho,
                      dec: store.iniciado && store.estaTrabalhando()
                          ? null
                          : store.decreamentarTempoTrabalho,
                    ),
                    Entradatempo(
                      titulo: 'Descanso',
                      valor: store.tempoDescanso,
                      inc: store.iniciado && store.estaDescansando()
                          ? null
                          : store.incrementarTempoDescanso,
                      dec: store.iniciado && store.estaDescansando()
                          ? null
                          : store.decreamentarTempoDescanso,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
