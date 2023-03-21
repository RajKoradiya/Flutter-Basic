// ignore_for_file: prefer_const_constructors

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

    // var arrName = ["Raj", "Ashish", "Monank", "Sandip", "Manthan"];

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: Image.asset("assets/image/flutter-logo.png"),
        ),
      )
      // Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.deepOrange.shade200,
      //   child: Center(
      //     child: Container(
      //       width: 150,
      //       height: 150,
      //       decoration: BoxDecoration(
      //         color: Colors.yellow,
      //         // borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      //         border: Border.all(
      //           color: Colors.black,
      //           width: 5,
      //         ),
      //         // ignore: prefer_const_literals_to_create_immutables
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.black54,
      //             blurRadius: 50,
      //             spreadRadius: 30,
      //             // blurStyle: BlurStyle.outer
      //
      //           ),
      //         ],
      //         shape: BoxShape.circle
      //       ),
      //     ),
      //   ),
      // )
      // ListView.separated(itemBuilder: (context, index) {
      //   return Row(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           children: [
      //             Text(arrName[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      //             Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Text(arrName[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      //             ),
      //           ],
      //         ),
      //
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(arrName[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      //       ),
      //     ],
      //   );
      // },
      // itemCount: arrName.length,
      //   separatorBuilder: (context, index) {
      //   return Divider(height: 100, thickness: 10,);
      //   },
      // )

      // ListView
      // ListView(
      //   scrollDirection: Axis.horizontal,
      //   // reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Raj", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Ashish", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Monank", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Sandip", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Manthan", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      //     )
      //   ],
      // )




      // Scroll View
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         SingleChildScrollView(
      //           scrollDirection: Axis.horizontal,
      //           child: Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.yellow,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.brown,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.cyan,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.blue,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.red,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           // width: 200,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           // width: 200,
      //           color: Colors.blueGrey,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           // width: 200,
      //           color: Colors.cyan,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           // width: 200,
      //           color: Colors.brown,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           // width: 200,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           // width: 200,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           // width: 200,
      //           color: Colors.blueGrey,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           // width: 200,
      //           color: Colors.cyan,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           // width: 200,
      //           color: Colors.brown,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           // width: 200,
      //           color: Colors.brown,
      //         ),
      //       ],
      //     ),
      //   ),
      // )
    );
  }
}
