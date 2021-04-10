import 'package:flutter/material.dart';
import 'utilitarios.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLogin createState() => _TelaLogin();
}

class _TelaLogin extends State<TelaLogin> {
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
                        image: AssetImage('./images/background_tela_login.png'),
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
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.blue[900], decorationColor: Colors.white),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person, color: Colors.blue[900], size: 22),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue[900]
                                    )
                                ),
                                labelText: 'Usuário:',
                                labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    )
                                )
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: TextFormField(
                                cursorColor: Colors.white,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock, color: Colors.blue[900], size: 22),
                                    focusColor: Colors.white,
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue[900]
                                        )
                                    ),
                                    labelText: 'Senha:',
                                    labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white
                                        )
                                    )
                                ),
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
