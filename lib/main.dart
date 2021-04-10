import 'package:app_educativo/login.dart';
import 'package:app_educativo/segunda_tela.dart';
import 'package:flutter/material.dart';
import 'utilitarios.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/login": (context) => TelaLogin(),
          "/segunda_tela": (context) => SegundaTela()
        },
        //theme: ThemeData(primaryColor: Colors.deepPurple[200]),
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: Text(
              "Divisor de Contas", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),*/
        body: new Stack(
              children: <Widget>[
                new Container(
                  decoration: new BoxDecoration(
                        image: new DecorationImage(
                            image: AssetImage('./images/background_login.png'),
                            fit: BoxFit.cover))
                ),
                new Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0,10,0,10),
                        child: botaoGenerico("Entrar", context, "/login"),
                      ),
                      botaoGenerico("Cadastrar", context, "/login")
                    ]
                  )
                )
            ]
        ),
        extendBody: true,
        extendBodyBehindAppBar: true
    );
  }
}