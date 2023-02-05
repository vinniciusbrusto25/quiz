import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

//State<> passa a classe do componente que queremos controlar seu estado
//Ou seja, temos uma classe p/ gerenciar o estado e outra classe p/ ser
//nosso componente stateful.
class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

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
                ElevatedButton(onPressed: responder, child: const Text('Resposta 1')),
                ElevatedButton(onPressed: responder, child: const Text('Resposta 2')),
                ElevatedButton(onPressed: responder, child: const Text('Resposta 3'))
              ],
            )));
  }
}

class PerguntaApp extends StatefulWidget {

  //Sobreescrevo o método abstrato createState que deve retornar um State,
  //sendo PerguntaAppState um State:
  PerguntaAppState createState() {

    //Posso omitir o new, desta forma chamando o construtor
    return PerguntaAppState();
  }
}
