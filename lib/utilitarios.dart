
import 'package:flutter/material.dart';
import 'login.dart';
import 'main.dart';
import 'segunda_tela.dart';

botaoGenerico(texto, BuildContext context, rota){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200, 20),
        primary: Colors.purple,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        textStyle: TextStyle(
            fontSize: 18,
           )),
      child: Text(texto),
      onPressed: (){
        Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => TelaLogin()
          )
        );
      }
  );
}
