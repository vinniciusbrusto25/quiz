import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print('Pergunta respondida!');
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Perguntas')),
            body: Column(
              children: [
                Text(perguntas[perguntaSelecionada]),
                ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
                ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
                ElevatedButton(onPressed: responder, child: Text('Resposta 3'))
              ],
            )));
  }
}
