
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto MobX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Formulário Reativo'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final controller = Controller();

  /*void _incrementCounter() {
    setState(() {
      
    });
  }
  */

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Nome:'),
              onChanged: controller.mudarNome,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(labelText: 'Sobrenome:'),
              onChanged: controller.mudarSobreNome,
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) {
               return Text('${controller.nomecompleto}');
              },
            )
          ],
        ),
      ),
      
    );
  }
}
