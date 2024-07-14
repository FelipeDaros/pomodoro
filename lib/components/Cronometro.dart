import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/CronometroBotao.dart';
import 'package:provider/provider.dart';
import 'package:pomodoro/store/pomodoro.store.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
        builder: (_) => Container(
              color: store.estaTrabalhando() ? Colors.red : Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    store.estaTrabalhando()
                        ? 'Hora de trabalhar'
                        : 'Hora de descansar',
                    style: const TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
                    style: const TextStyle(fontSize: 120, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (!store.iniciado)
                          CronometroBotao(
                            icone: Icons.play_arrow,
                            texto: 'Iniciar',
                            click: store.iniciar,
                          ),
                        if (store.iniciado)
                          CronometroBotao(
                            icone: Icons.stop,
                            texto: 'Parar',
                            click: store.parar,
                          ),
                        CronometroBotao(
                          icone: Icons.refresh,
                          texto: 'Reiniciar',
                          click: store.reiniciar,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}
