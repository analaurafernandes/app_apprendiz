import 'package:flutter/material.dart';
import 'utilitarios.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';

final List<String> imgList = [
'./images/letraA.JPG','./images/letraB.JPG','./images/letraC.JPG', './images/letraD.JPG',
  './images/letraE.JPG', './images/letraF.JPG', './images/letraG.JPG', './images/letraH.JPG',
  './images/letraI.JPG', './images/letraJ.JPG', './images/letraK.JPG', './images/letraL.JPG',
  './images/letraM.JPG', './images/letraN.JPG', './images/letraO.JPG', './images/letraP.JPG',
  './images/letraQ.JPG', './images/letraR.JPG', './images/letraS.JPG', './images/letraT.JPG',
  './images/letraU.JPG', './images/letraV.JPG', './images/letraW.JPG', './images/letraX.JPG',
  './images/letraY.JPG', './images/letraZ.JPG'
];

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
          child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(),
                  items: imgList.map((item) => Container(
                    child: Center(
                        child: Image.asset(item, fit: BoxFit.cover, width: 1000)
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
