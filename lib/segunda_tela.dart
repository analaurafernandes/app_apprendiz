import 'package:flutter/material.dart';
import 'utilitarios.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SegundaTela extends StatefulWidget {
  @override
  _SegundaTelaState createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          actions: <Widget>[
            PopupMenuButton(itemBuilder: (BuildContext context){
              return[
                PopupMenuItem(child: Text('Flutter')),
                PopupMenuItem(child: Text('Android')),
              ];
            })
          ],
        ),
        body: new Stack(
            children: <Widget>[
              new Container(
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage('./images/background_default.png'),
                          fit: BoxFit.cover))
              ),
              new Center(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(128, 0, 128, 0),
                      child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TextFormField(
                                  decoration: InputDecoration(
                                      icon: Icon(Icons.person),
                                      border: UnderlineInputBorder(),
                                      labelText: 'Enter your username'
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      icon: Icon(Icons.lock),
                                      border: UnderlineInputBorder(),
                                      labelText: 'Enter your password'
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                    child: botaoGenerico("Entrar", context, "/segunda_tela")
                                )

                              ]
                          )
                      )
                  )
              )
            ]
        )
    );
  }
}
