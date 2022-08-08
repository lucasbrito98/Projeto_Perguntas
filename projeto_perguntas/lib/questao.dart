

// ignore_for_file: avoid_renaming_method_parameters, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './questao.dart';
import './resposta.dart';




class  Questao extends StatelessWidget  {

  final String texto;
  Questao(this.texto);
  @override 
  Widget build(BuildContext){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28, ),
        textAlign: TextAlign.center,
        
        
        ),
    );
  }
}