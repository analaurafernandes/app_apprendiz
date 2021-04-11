import 'package:flutter/material.dart';
import 'package:app_educativo/utilitarios.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:app_educativo/tela_numeros.dart';

final List<String> imgList = [
'./images/letraA.JPG','./images/letraB.JPG','./images/letraC.JPG', './images/letraD.JPG',
  './images/letraE.JPG', './images/letraF.JPG', './images/letraG.JPG', './images/letraH.JPG',
  './images/letraI.JPG', './images/letraJ.JPG', './images/letraK.JPG', './images/letraL.JPG',
  './images/letraM.JPG', './images/letraN.JPG', './images/letraO.JPG', './images/letraP.JPG',
  './images/letraQ.JPG', './images/letraR.JPG', './images/letraS.JPG', './images/letraT.JPG',
  './images/letraU.JPG', './images/letraV.JPG', './images/letraW.JPG', './images/letraX.JPG',
  './images/letraY.JPG', './images/letraZ.JPG'
];

class TelaAlfabeto extends StatefulWidget {
  @override
  _TelaAlfabetoState createState() => _TelaAlfabetoState();
}

class _TelaAlfabetoState extends State<TelaAlfabeto> {
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
              print("entrei");
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
          image: AssetImage('./images/background_tela_letras.png'),
            fit: BoxFit.cover))
        ),
        new Center(
          child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(),
                  items: imgList.map((item) => Container(
                    child: Center(
                        child: Image.asset(item, fit: BoxFit.fill, width: 500)
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
