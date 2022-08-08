
// ignore_for_file: override_on_non_overriding_member, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, annotate_overrides, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

class  Resposta extends StatelessWidget {
@override
final String texto;
final void Function  () quandoSelecionado;
Resposta (this.texto, this.quandoSelecionado);
Widget build (BuildContext context){
  return Container(
    width: double.infinity,
    // ignore: deprecated_member_use
    child: RaisedButton (
      textColor:Colors.white,
      color: Colors.blue, highlightColor: Colors.red,
       child: Text (texto,),
           onPressed: quandoSelecionado, 
          ),
  );
  
}


}