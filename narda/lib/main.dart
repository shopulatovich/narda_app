import 'package:flutter/material.dart';
import 'dart:math';


void main(List<String> args) {
  runApp(nardaApp());

}

class nardaApp extends StatefulWidget {
  
  @override
  State<nardaApp> createState() => _nardaAppState();
}

class _nardaAppState extends State<nardaApp> {


  var son=1;
  var son1=1;

  Click(){
    setState(() {
      son= Random().nextInt(6)+1;
      son1 = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Narda toshlari - Taqdir kodlari...', style: TextStyle(fontSize: 40), textAlign: TextAlign.center,),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(image: AssetImage('images/dice$son.png')),
            )),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(image: AssetImage('images/dice$son1.png')),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: (){Click();}, child: Text('Toshni tashla qani...')),
            )
          ]),
        ),
      ),
    );
  }
}