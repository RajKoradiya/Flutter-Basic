// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_demo/ui_assets/ui.dart';

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
        textTheme: TextTheme(
          // headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
          // titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic)
        )
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
  var emailText = TextEditingController();
  var passText = TextEditingController();

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
          width: 300,
          height: 300,
          child: Card(
            elevation: 6,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Log-in", style: myTextStyle11(),),
                    Container(height: 10,),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailText,
                      decoration: InputDecoration(
                        hintText: "Enter E-mail",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 3
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.cyan,
                                width: 2
                            )
                        ),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.black12,
                                width: 2
                            )
                        ),
                        prefixIcon: Icon(Icons.email_rounded, color: Colors.black54,),
                      ),
                    ),
                    Container(height: 10,),
                    TextField(
                      controller: passText,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 3
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.cyan,
                                  width: 2
                              )
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.black12,
                                  width: 2
                              )
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.black54,)
                      ),
                    ),
                    Container(height: 10,),
                    ElevatedButton(onPressed: (){
                      String uEmail = emailText.text.toString();
                      String uPass = passText.text;

                      print("Email = $uEmail ,  Password = $uPass");
                    }, child: Text("Login"))
                  ],
                ),
              ),
            ),
          ),
        ),
      )
      // Center(
      //   child: Card(
      //     shadowColor: Colors.cyanAccent,
      //     elevation: 20,
      //       color: Colors.orange,
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("Raj", style: myTextStyle11(),),
      //       )
      //   ),
      // )
      // Column(
      //   children: [
      //     Text("Text 1", style: myTextStyle11(textColor: Colors.cyan, fontWeight: FontWeight.w100)),
      //     Text("Text 1", style: Theme.of(context).textTheme.titleMedium,),
      //     Text("Text 1", style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.orange)),
      //     Text("Text 1", style: myTextStyle11(),)
      //   ],
      // )
      // Center(child: Container(
      //   width: 100,
      //     height: 100,
      //     child: Center(child: Text("Raj", style: TextStyle(fontFamily: "NSW", fontSize: 55, fontWeight: FontWeight.w400),)),
      //     color: Colors.cyanAccent,
      // )
      //
      // )
      // Center(
      //   child: CircleAvatar(
      //     child: Container(
      //       width: 60,
      //       height: 60,
      //       child: Column(
      //         children: [
      //             Container(
      //               width: 40,
      //               height: 40,
      //               child: Image.asset("assets/image/flutter-logo.png"),
      //             ),
      //           Text("Flutter")
      //         ],
      //
      //       ),
      //     ),
      //     // backgroundImage: AssetImage("assets/image/flutter-logo.png"),
      //     backgroundColor: Colors.black,
      //     maxRadius: 60,
      //   ),
      // )
      // ListView.separated(itemBuilder: (context, index) {
      //   return ListTile(
      //     leading: Text('${index+1}'),
      //     title: Text(arrName[index]),
      //     subtitle: Text("Names"),
      //     trailing: Icon(Icons.add),
      //   );
      // },
      //   itemCount: arrName.length,
      //   separatorBuilder: (context, index) {
      //     return Divider(height: 10, thickness: 2,);
      //   },
      // )
      // Container(
      //   margin: EdgeInsets.all(25),
      //   child: Padding(
      //     padding: EdgeInsets.only(top: 10, left: 10),
      //     child: Text("Raj", style: TextStyle(fontSize: 55),),
      //   ),
      //   color: Colors.green,
      // )
      // Column(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 4,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.orange,
      //       ),
      //     ),
      //   ],
      // )
      // Row(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 4,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.orange,
      //       ),
      //     ),
      //   ],
      // )
      // Center(
      //   child: Container(
      //     height: 100,
      //     width: 100,
      //     child: Image.asset("assets/image/flutter-logo.png"),
      //   ),
      // )
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
