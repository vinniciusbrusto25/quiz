import 'package:flutter/material.dart';
import './questao.dart';

void main() => runApp(PerguntaApp());

//State<> passa a classe do componente que queremos controlar seu estado
//Ou seja, temos uma classe p/ gerenciar o estado e outra classe p/ ser
//nosso componente stateful.
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print('Pergunta respondida!');
    print(_perguntaSelecionada);
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
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
                onPressed: _responder, child: const Text('Resposta 1')),
            ElevatedButton(
                onPressed: _responder, child: const Text('Resposta 2')),
            ElevatedButton(
                onPressed: _responder, child: const Text('Resposta 3'))
          ],
        )
      )
    );
  }
}

class PerguntaApp extends StatefulWidget {
  //Sobreescrevo o método abstrato createState que deve retornar um State,
  //sendo PerguntaAppState um State:
  _PerguntaAppState createState() {
    //Posso omitir o new, desta forma chamando o construtor
    return _PerguntaAppState();
  }
}
