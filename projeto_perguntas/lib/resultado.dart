// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';


class Resultado extends StatelessWidget {
    int pontuacao;
  final void Function () quandoReiniciarQuestionario;
  
  
  Resultado (this.pontuacao, this.quandoReiniciarQuestionario);

String get fraseResultado {
  if (pontuacao < 8 ){
    return 'Parabéns';
  } else  if (pontuacao < 10){
    return 'Você é Bom!';
  } else if ( pontuacao <5){
    return 'Impresionante';
  } else {
    return 'Nivel Jedi';
  } 
  
}


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
           fraseResultado ,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton( 
          // ignore: sort_child_properties_last
          child: Text('Clique Aqui para Reiniciar' ,
          style:
           TextStyle( fontStyle: FontStyle.italic,
            fontSize: 19),
            ),
         textColor: Colors.black, 
         onPressed:  quandoReiniciarQuestionario,
        )
      ],
    );
  }
  }

