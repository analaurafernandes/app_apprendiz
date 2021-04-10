import 'package:flutter/material.dart';
import 'segunda_tela.dart';
import 'utilitarios.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLogin createState() => _TelaLogin();
}

class _TelaLogin extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Tela"),
        backgroundColor: Colors.blueAccent,
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
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.fromLTRB(128, 0, 128, 0),
                          child: ListTile(
                            leading: IconButton(
                                icon:  Icon(Icons.person),
                                onPressed: (){},
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                              ),
                            title: Text('Login:'),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(128, 0, 128, 0),
                          child: ListTile(
                            title: TextField(),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(128, 0, 128, 0),
                          child: ListTile(
                            leading: Icon(Icons.lock),
                            title: Text('Senha:'),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(128, 0, 128, 0),
                          child: ListTile(
                            title: TextField(),
                          )
                      ),
                      botaoGenerico("Entrar", context, TelaLogin())
                    ]
                )
              )
            ),
            Column(
              children: <Widget>[
                ElevatedButton(
                    child: Text("Ir para a segunda tela"),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SegundaTela()
                        ),
                      );
                    }
                ),
              ],
            )
          ]
      )
    );
  }
}
