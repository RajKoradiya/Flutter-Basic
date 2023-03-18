import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.yellow,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.brown,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.cyan,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                // width: 200,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                // width: 200,
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                // width: 200,
                color: Colors.cyan,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                // width: 200,
                color: Colors.brown,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                // width: 200,
                color: Colors.yellow,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                // width: 200,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                // width: 200,
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                // width: 200,
                color: Colors.cyan,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                // width: 200,
                color: Colors.brown,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                // width: 200,
                color: Colors.brown,
              ),
            ],
          ),
        ),
      )
    );
  }
}
