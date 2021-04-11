import 'package:flutter/material.dart';
import 'package:app_educativo/utilitarios.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:app_educativo/tela_alfabeto.dart';

final List<String> imgList = [
  './images/01.JPG','./images/02.JPG','./images/03.JPG', './images/04.JPG',
  './images/05.JPG', './images/06.JPG', './images/07.JPG', './images/08.JPG',
  './images/09.JPG', './images/10.JPG', './images/11.JPG', './images/12.JPG',
  './images/13.JPG', './images/14.JPG', './images/15.JPG', './images/16.JPG',
  './images/17.JPG', './images/18.JPG', './images/19.JPG', './images/20.JPG'
];

class TelaNumeros extends StatefulWidget {
  @override
  _TelaNumerosState createState() => _TelaNumerosState();
}

class _TelaNumerosState extends State<TelaNumeros> {
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
                PopupMenuItem(child: Text('Aprender as Letras'), value: 0),
                PopupMenuItem(child: Text('Aprender os Números'), value: 1),
              ];
            },
                onSelected: (result) {
                  if (result == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaAlfabeto()),
                    );
                  }
                  else if(result == 1){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaNumeros())
                    );
                  }
                })
          ],
        ),
        body: new Stack(
            children: <Widget>[
              new Container(
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage('./images/background_tela_numeros.png'),
                          fit: BoxFit.cover))
              ),
              new Center(
                child: Container(
                    child: CarouselSlider(
                      options: CarouselOptions(),
                      items: imgList.map((item) => Container(
                        child: Center(
                            child: Image.asset(item, fit: BoxFit.fill, width: 400)
                        ),
                      )).toList(),
                    )
                ),
              )
            ]
        )
    );
  }
}
