// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  int _pontualcaoTotal = 0;


  final _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita',
      'respostas': [
      {'texto':'Azul', 'pontuacao':7}, 
      {'texto':'Vermelho', 'pontuacao':6}, 
      {'texto':'Preto','pontuacao':8}, 
      {'texto':'Amarelo','pontuacao':1},
      ],
    },
    {
      'texto': 'Qual é seu animal Favorito?',
      'respostas': [
        {'texto':'Cachorro','pontuacao':6}, 
        {'texto':'Sapo','pontuacao':2},
        {'texto':'Cobra', 'pontuacao':7},
        {'texto':'Jacaré','pontuacao':9},
      ],
    },
    {
      'texto': 'Qual é o seu intrutor Favorito',
      'respostas': [
      {'texto':'João','pontuacao':4},
      {'texto':'Rafael','pontuacao':2},
      {'texto':'Pamela','pontuacao':1},
      {'texto':'Jose','pontuacao':8},
      ],
    },
  ];

  void _reiniciarQuestionario (){
setState(() {
  _perguntaSelecionada = 0;
  _pontualcaoTotal = 0;
});


  }

  bool get TemPerguntaSelecionada => _perguntaSelecionada < _perguntas.length;
  void _responder(int pontuacao) {
    if (TemPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontualcaoTotal  += pontuacao;
      });
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: TemPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
                )
               : Resultado (_pontualcaoTotal,_reiniciarQuestionario)
      ),
    );
  }
}




class PerguntaApp extends StatefulWidget {
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
