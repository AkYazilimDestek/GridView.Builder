import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.builder"),
        centerTitle: true,
      ),
      body : GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemBuilder: (context,index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.blue,
            ),
          );
        })
    );
  }
}
