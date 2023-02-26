import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      //valor máximo do double. É uma das estratégias p/ deixar no máximo
      //Dá pra pegar a largura da tela, mas nesse caso então pegando o máximo
      //do Double
      width: double.infinity,
      //fromLTRB representa left top right bottom, ou simplesmente usar
      //all que aplica a todos da mesma forma como no CSS
      margin: EdgeInsets.all(8),
      child: Text(
        this.texto,
        style: TextStyle(
          fontSize: 22
        ),
        textAlign: TextAlign.center
      ),
    );
  }
}
