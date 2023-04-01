// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

// import 'dart:ffi';

// import 'dart:ffi';

// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter_demo/ui_assets/ui.dart';
// import 'package:flutter_demo/widgets/detial_page.dart';
// import 'package:flutter_demo/IntroScreen.dart';
// import 'package:flutter_demo/IntroScreen.dart';
// import 'package:flutter_demo/SplashScreen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_demo/widgets/round_btn.dart';
// import 'package:intl/intl.dart';

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
              )),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: "Home",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  // RangeValues values = RangeValues(0, 1);
  // var count = 0;
  // var nc1 = TextEditingController();
  // var nc2 = TextEditingController();
  // var result="";
  // var emailText = TextEditingController();
  // var passText = TextEditingController();
  // var name = TextEditingController();

  // var _width = 200.0;
  // var _heigth = 100.0;
  // var myOpecity = 1.0;
  // @override
  // void initState() {
  //   super.initState();
  //
  //   // Timer(Duration(seconds: 4), (){
  //   //   reload();
  //   // });
  // }

  // void reload() {
  //   setState(() {
  //     if(flag){
  //       flag = false;
  //     }
  //     else{
  //       flag = true;
  //     }
  //
  //   });
  // }
  // bool flag = true;
  // var myDecor = BoxDecoration(
  //   borderRadius: BorderRadius.circular(2),
  //   color: Colors.green
  // );

  // var arrList = [1,2,3,4,5,6,7,8,9,10,11,12,13];

  late Animation _animation;
  // late Animation colorAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    // colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red).animate(animationController);

    _animationController.addListener(() {
      // print(animation.value);
      setState(() {

      });
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {


    // RangeLabels labals = RangeLabels(values.start.toString(), values.end.toString());
    // var arrName = ["Raj", "Ashish", "Monank", "Sandip", "Manthan"];
    // var time = DateTime.now();
    // var colors = [Colors.cyan,Colors.red,Colors.orange,Colors.green,Colors.yellow,Colors.brown,Colors.blueGrey,Colors.greenAccent];
    var listRadius = [100.0,150.0,200.0,250.0];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: listRadius.map((radius) => Container(
            width: radius*_animation.value,
            height: radius*_animation.value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(1.0 - _animation.value),
            ),
          )).toList()
        ),
      )


      //<-------------------------------------------Tween Animation---------------------------------------->
      // Center(
      //   child: Container(
      //     width: animation.value,
      //     height: animation.value,
      //     color: colorAnimation.value,
      //   ),
      // )


      //<---------------------------------- Gradient------------------------------------>
      // Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: [
      //         Colors.blue.shade200,
      //         Colors.red.shade200
      //       ]
      //     )
      //   ),
      //   child: Center(child: Text("Raj",style: myTextStyle25(),)),
      // )



      //<----------------------------------ClipRRect------------------------->
      // Center(
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.circular(20),
      //     child: Image.asset('assets/image/bg.jpg',width: 300,height: 200, fit: BoxFit.fill,),
      //   ),
      // )



      //<-----------------------------------------ListWheelScrollView widget----------------------------------------------->
      // ListWheelScrollView(
      //     itemExtent: 150,
      //   children: arrList.map((value) => Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(
      //       child: Center(child: Text("$value", style: TextStyle(fontSize: 30,color: Colors.white),)),
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(20),
      //         color: Colors.green,
      //       ),
      //         width: double.infinity,
      //
      //       ),
      //   )).toList(),
      // )



      //<-------------------------------------------------Hero widget------------------------------------------>
      // Container(
      //   child: Center(
      //     child: InkWell(
      //       onTap: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => Detailpage()));
      //       },
      //       child: Hero(
      //         tag: 'background',
      //         child: Image.asset('assets/image/bg.jpg', width: 100,height: 100,),
      //       ),
      //     ),
      //   ),
      // )



      //<-----------------------------------------AnimatedCrossFade------------------------------------------->
      // Column(
      //   children: [
      //     AnimatedCrossFade(
      //       duration: Duration(seconds: 2),
      //       firstChild: Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.green,
      //       ),
      //       secondChild: Image.asset("assets/image/flutter-logo.png",width: 200,height: 200,),
      //       crossFadeState: flag ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      //       firstCurve: Curves.bounceInOut,
      //       secondCurve: Curves.easeInCubic,
      //
      //     ),
      //     ElevatedButton(onPressed: (){
      //       reload();
      //     }, child: Text("Change"))
      //   ],
      // )





      //<-------------------------------------------AnimatedOpacity---------------------------------------->
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       AnimatedOpacity(opacity: myOpecity, duration: Duration(seconds: 2), child: Container(
      //         width: 200,
      //         height: 100,
      //         color: Colors.green,
      //       ),),
      //       ElevatedButton(onPressed: (){
      //         setState(() {
      //           if(flag){
      //             myOpecity = 0.0;
      //             flag = false;
      //           }
      //           else{
      //             myOpecity = 1.0;
      //             flag = true;
      //           }
      //
      //         });
      //       }, child: Text("Close"))
      //     ],
      //   ),
      // )

      //<-----------------------------------------Animated Container----------------------------------------->
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       AnimatedContainer(
      //         width: _width,
      //         height: _heigth,
      //         decoration: myDecor,
      //         duration: Duration(seconds: 1),
      //         curve: Curves.easeInCubic,
      //       ),
      //       ElevatedButton(onPressed: (){
      //         setState(() {
      //           if(flag){
      //             _width = 100.0;
      //             _heigth = 200.0;
      //             flag = false;
      //             myDecor = BoxDecoration(
      //               borderRadius: BorderRadius.circular(25),
      //               color: Colors.orange
      //             );
      //           }
      //           else{
      //             _width = 200.0;
      //             _heigth = 100.0;
      //             myDecor = BoxDecoration(
      //               borderRadius: BorderRadius.circular(2),
      //               color: Colors.green
      //             );
      //             flag = true;
      //           }
      //
      //         });
      //       }, child: Text("Animation"))
      //     ],
      //   ),
      // )




      //<--------------------------------------RangeSlider------------------------------>
      // Center(
      //   child: RangeSlider(
      //     values: values,
      //     labels: labals,
      //     divisions: 10,
      //     onChanged: (newValue){
      //       values = newValue;
      //       print("${newValue.start}, ${newValue.end}");
      //        setState(() {
      //
      //       });
      //     },
      //   ),
      // )

        //<----------------------------Splash Screen, Data Passing one to anothe screen--------------------------------------->
      // Center(
      //   child: Container(
      //     width: double.infinity,
      //     height: double.infinity,
      //     child: Center(child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text("Welcome", style: TextStyle(fontSize: 30,color: Colors.white),),
      //         SizedBox(height: 10,),
      //         TextField(
      //           controller: name,
      //         ),
      //         SizedBox(height: 10,),
      //         ElevatedButton(onPressed: (){
      //           Navigator.push(context, MaterialPageRoute(builder: (context) => IntroScreen(name.text.toString()),));
      //         }, child: Text("Next")),
      //       ],
      //     )),
      //     color: Colors.blue.shade200,
      //   ),
      // )





      //<-----------------------------------------------Basic Calculation---------------------------------------------->
      // Container(
      //   color: Colors.blue.shade100,
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         TextField(
      //           keyboardType: TextInputType.number,
      //           controller: nc1,
      //           decoration: InputDecoration(
      //             focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(10),
      //               borderSide: BorderSide(
      //                 color: Colors.black54,
      //                 width: 2
      //               )
      //             )
      //           ),
      //         ),
      //         SizedBox(height: 10,),
      //         TextField(
      //           keyboardType: TextInputType.number,
      //           controller: nc2,
      //           decoration: InputDecoration(
      //               focusedBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10),
      //                   borderSide: BorderSide(
      //                       color: Colors.black54,
      //                       width: 2
      //                   )
      //               )
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(15.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               ElevatedButton(onPressed: (){
      //                 var no1 = int.parse(nc1.text.toString());
      //                 var no2 = int.parse(nc2.text.toString());
      //
      //                 var add = no1+no2;
      //
      //                 result = "The $no1 and $no2 sum is $add";
      //
      //                 setState(() {});
      //
      //               }, child: Text("+", style: TextStyle(fontSize: 35),)),
      //               ElevatedButton(onPressed: (){
      //                 var no1 = int.parse(nc1.text.toString());
      //                 var no2 = int.parse(nc2.text.toString());
      //
      //                 var sub = no1-no2;
      //
      //                 result = "The $no1 and $no2 sub is $sub";
      //                 setState(() {});
      //
      //               }, child: Text("-", style: TextStyle(fontSize: 35),)),
      //               ElevatedButton(onPressed: (){
      //                 var no1 = int.parse(nc1.text.toString());
      //                 var no2 = int.parse(nc2.text.toString());
      //
      //                 var mul = no1*no2;
      //
      //                 result = "The $no1 and $no2 multiple is $mul";
      //                 setState(() {});
      //
      //               }, child: Text("*", style: TextStyle(fontSize: 35),)),
      //               ElevatedButton(onPressed: (){
      //                 var no1 = int.parse(nc1.text.toString());
      //                 var no2 = int.parse(nc2.text.toString());
      //
      //                 var div = no1/no2;
      //
      //                 result = "The $no1 and $no2 divide is ${div.toStringAsFixed(3)}";
      //                 setState(() {});
      //
      //               }, child: Text("/", style: TextStyle(fontSize: 35),)),
      //             ],
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(result, style: TextStyle(fontSize: 20),),
      //         )
      //       ],
      //     ),
      //   ),
      // )



      //<-------------------------------------Statefull widget---------------------------------------->
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text("Count: $count", style: TextStyle(fontSize: 30),),
      //       ElevatedButton(onPressed: (){
      //         setState(() {
      //           count++;
      //           print(count);
      //         });
      //
      //       }, child: Text("Increment"))
      //     ],
      //   ),
      // )



      //<-----------------------------------------Positioned widget--------------------------------------------->
      // Container(
      //   width: 300,
      //   height: 300,
      //   color: Colors.blueGrey,
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         bottom: 10,
      //         right: 10,
      //         child: Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.orange,
      //         ),
      //       )
      //     ],
      //   ),
      // )

      //<-----------------------------------Font Awesome Icon------------------------------------------>
      // Center(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Icon(
      //         Icons.adb_rounded,
      //           color: Colors.green,
      //           size: 50,
      //         ),
      //         FaIcon(
      //             FontAwesomeIcons.amazonPay,
      //           size: 50,
      //           color: Colors.orange,
      //         )
      //       ],
      //     )
      // )



      //<-------------------------------------------------- RichText Widget --------------------------------------------->
      // Center(
      //   child: RichText(
      //     text: TextSpan(
      //       style: TextStyle(
      //         color: Colors.grey,
      //         fontSize: 15
      //       ),
      //       children: <TextSpan>[
      //         TextSpan(
      //           text: 'Hello ',
      //         ),
      //         TextSpan(
      //           text: 'World! ', style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w400)
      //         ),
      //         TextSpan(
      //           text: 'Welcome to '
      //         ),
      //         TextSpan(
      //           text: 'Flutter! ',style: myTextStyle25()
      //         )
      //       ]
      //     ),
      //
      //   ),
      // )



      //<-------------------------------------------SizeBox & Wrap Widget------------------------------------------------>
      // SizedBox(
      //   width: double.infinity,
      //   height: double.infinity,
      //   child: Wrap(
      //     direction: Axis.horizontal,
      //     spacing: 10,
      //     runSpacing: 10,
      //     alignment: WrapAlignment.center,
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.yellow,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.brown,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.cyan,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.greenAccent,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.green,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.orange,
      //       ),
      //     ],
      //   ),
      // ),



      //<-----------------------------------------------Custom Widget----------------------------------------->
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         width: 150,
      //         height: 50,
      //         // height: 100,
      //         child: RoundBtn(
      //           btName: "Login",
      //           icon: Icon(Icons.login),
      //           callback: (){
      //             print("Login Successfull!");
      //           },
      //           textStyle: myTextStyle20(),
      //
      //         ),
      //       ),
      //       Container(height: 10,),
      //       Container(
      //         width: 150,
      //         height: 50,
      //         // height: 100,
      //         child: RoundBtn(
      //           btName: "Submit",
      //           // icon: Icon(Icons.login),
      //           callback: (){
      //             print("Submited");
      //           },
      //           textStyle: myTextStyle25(),
      //           bgColor: Colors.blue,
      //
      //         ),
      //       ),
      //
      //     ],
      //   ),
      // )


      //<------------------------------------------Stack Widget------------------------------------>
      // Container(
      //   width: 400,
      //   height: 400,
      //   child: Stack(
      //     children: [
      //       Container(
      //         width: 300,
      //         height: 300,
      //         color: Colors.blue,
      //       ),
      //       Positioned(
      //         left: 60,
      //         top: 60,
      //         child: Container(
      //           width: 280,
      //           height: 280,
      //           color: Colors.blue.shade1000,
      //         ),
      //       )
      //     ],
      //   ),
      // )

      //<--------------------------CallBack Function & Custom widget----------------------------------------------->
      // Container(
      //   child: Column(
      //     children: [CatList(), NameList(), Details(), Footer()],
      //   ),
      // )
      //<--Callback Classes Down here-->

      //<-----------------------------GridView--------------------------------->
      // GridView.builder(itemBuilder: (context, index) {
      //   return Container(color: colors[index],);
      // },itemCount: colors.length, gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 100, crossAxisSpacing: 10,mainAxisSpacing: 10),)
      // GridView.extent(maxCrossAxisExtent: 100,
      // crossAxisSpacing: 10,
      // mainAxisSpacing: 10,
      // children: [
      //   Container(color: colors[0],),
      //   Container(color: colors[1],),
      //   Container(color: colors[2],),
      //   Container(color: colors[3],),
      //   Container(color: colors[4],),
      //   Container(color: colors[5],),
      //   Container(color: colors[6],),
      //   Container(color: colors[7],),
      // ],)
      // GridView.count(crossAxisCount: 3,
      // crossAxisSpacing: 10,
      // mainAxisSpacing: 10,
      // children: [
      //   Container(color: colors[0],),
      //   Container(color: colors[1],),
      //   Container(color: colors[2],),
      //   Container(color: colors[3],),
      //   Container(color: colors[4],),
      //   Container(color: colors[5],),
      //   Container(color: colors[6],),
      //   Container(color: colors[7],),
      // ],)

      //<-------------------------------------------Date & Time Picker------------------------------------------------->
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text("Select Date", style: TextStyle(fontSize: 25),),
      //       ElevatedButton(onPressed: () async {
      //         DateTime? datePicker = await showDatePicker(
      //             context: context,
      //             initialDate: DateTime.now(),
      //             firstDate: DateTime(2020),
      //             lastDate: DateTime(2024));
      //
      //         if(datePicker!=null){
      //           print("Date Selected : ${datePicker.day} / ${datePicker.month} / ${datePicker.year}");
      //         }
      //       }, child: Text("Select Date")),
      //       ElevatedButton(onPressed: () async {
      //         TimeOfDay? timePicker = await showTimePicker(
      //             context: context,
      //             initialTime: TimeOfDay.now());
      //
      //         if(timePicker!=null){
      //           print("Date Selected : ${timePicker.hour} / ${timePicker.minute}");
      //         }
      //       }, child: Text("Select Time"))
      //     ],
      //   ),
      // )

      //<----------------------------------Date-Format------------------------------------------->
      // Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text("Current Time is : ${DateFormat('jms').format(time)}", style: myTextStyle11(),),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //
      //           });
      //         }, child: Text("Change Time"))
      //       ],
      //     ),
      //   ),
      // )

      //<------------------------------------Login Card using TextField-------------------------------------------->
      // Center(
      //   child: SizedBox(
      //     width: 300,
      //     height: 300,
      //     child: Card(
      //       elevation: 6,
      //       child: Center(
      //         child: Padding(
      //           padding: const EdgeInsets.all(10),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text("Log-in", style: myTextStyle11(),),
      //               Container(height: 10,),
      //               TextField(
      //                 keyboardType: TextInputType.emailAddress,
      //                 controller: emailText,
      //                 decoration: InputDecoration(
      //                   hintText: "Enter E-mail",
      //                   focusedBorder: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(20),
      //                     borderSide: BorderSide(
      //                       color: Colors.red,
      //                       width: 3
      //                     )
      //                   ),
      //                   enabledBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(20),
      //                       borderSide: BorderSide(
      //                         color: Colors.cyan,
      //                           width: 2
      //                       )
      //                   ),
      //                   disabledBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(20),
      //                       borderSide: BorderSide(
      //                           color: Colors.black12,
      //                           width: 2
      //                       )
      //                   ),
      //                   prefixIcon: Icon(Icons.email_rounded, color: Colors.black54,),
      //                 ),
      //               ),
      //               Container(height: 10,),
      //               TextField(
      //                 controller: passText,
      //                 obscureText: true,
      //                 obscuringCharacter: '*',
      //                 decoration: InputDecoration(
      //                     hintText: "Enter Password",
      //                     focusedBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(20),
      //                         borderSide: BorderSide(
      //                             color: Colors.red,
      //                             width: 3
      //                         )
      //                     ),
      //                     enabledBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(20),
      //                         borderSide: BorderSide(
      //                           color: Colors.cyan,
      //                             width: 2
      //                         )
      //                     ),
      //                     disabledBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(20),
      //                         borderSide: BorderSide(
      //                             color: Colors.black12,
      //                             width: 2
      //                         )
      //                     ),
      //                     prefixIcon: Icon(Icons.lock, color: Colors.black54,)
      //                 ),
      //               ),
      //               Container(height: 10,),
      //               ElevatedButton(onPressed: (){
      //                 String uEmail = emailText.text.toString();
      //                 String uPass = passText.text;
      //
      //                 print("Email = $uEmail ,  Password = $uPass");
      //               }, child: Text("Login"))
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // )

      //<-----------------------------------Card widget------------------------------------------->
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

      //<--------------------------------Style & Theme-------------------------------------->
      // Column(
      //   children: [
      //     Text("Text 1", style: myTextStyle11(textColor: Colors.cyan, fontWeight: FontWeight.w100)),
      //     Text("Text 1", style: Theme.of(context).textTheme.titleMedium,),
      //     Text("Text 1", style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.orange)),
      //     Text("Text 1", style: myTextStyle11(),)
      //   ],
      // )

      //<----------------------------Add custome fontfamily------------------------------------------>
      // Center(child: Container(
      //   width: 100,
      //     height: 100,
      //     child: Center(child: Text("Raj", style: TextStyle(fontFamily: "NSW", fontSize: 55, fontWeight: FontWeight.w400),)),
      //     color: Colors.cyanAccent,
      // )
      //
      // )

      //<-------------------------------------------CircleAvatar------------------------------------------>
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

      //<--------------------------------ListTile------------------------------------>
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

      //<--------------------------------------Expanded--------------------------------------->
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

      //<-------------------------------------Add Image------------------------------------------>
      // Center(
      //   child: Container(
      //     height: 100,
      //     width: 100,
      //     child: Image.asset("assets/image/flutter-logo.png"),
      //   ),
      // )

      //<----------------------------------------Container Decoration----------------------------------------->
      // Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.deepOrange.shade100,
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

      //<--------------------------------------ListView------------------------------------------->
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

      // <--------------------------------------Scroll View----------------------------------->
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
      //                   height: 100,
      //                   width: 100,
      //                   color: Colors.yellow,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   height: 100,
      //                   width: 100,
      //                   color: Colors.brown,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   height: 100,
      //                   width: 100,
      //                   color: Colors.cyan,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   height: 100,
      //                   width: 100,
      //                   color: Colors.blue,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 10),
      //                   height: 100,
      //                   width: 100,
      //                   color: Colors.red,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 100,
      //           // width: 100,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 100,
      //           // width: 100,
      //           color: Colors.blueGrey,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 100,
      //           // width: 100,
      //           color: Colors.cyan,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 100,
      //           // width: 100,
      //           color: Colors.brown,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 100,
      //           // width: 100,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 100,
      //           // width: 100,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 100,
      //           // width: 100,
      //           color: Colors.blueGrey,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 100,
      //           // width: 100,
      //           color: Colors.cyan,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 100,
      //           // width: 100,
      //           color: Colors.brown,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 100,
      //           // width: 100,
      //           color: Colors.brown,
      //         ),
      //       ],
      //     ),
      //   ),
      // )
    );
  }
}


// class CatList extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         flex: 2,
//         child: Container(
//           color: Colors.orange,
//           child: ListView.builder(itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SizedBox(
//               width: 100,
//               child: CircleAvatar(
//                 backgroundColor: Colors.green,
//
//               ),
//             ),
//           ),itemCount: 10, scrollDirection: Axis.horizontal,),
//         ));
//   }
// }
//
// class NameList extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         flex: 4,
//         child: Container(
//           color: Colors.blue,
//           child: ListView.builder(itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ListTile(
//               leading: CircleAvatar(
//                 backgroundColor: Colors.blueGrey,
//               ),
//               title: Text("Name"),
//               subtitle: Text("Number"),
//               trailing: Icon(Icons.delete),
//             ),
//           ),itemCount: 10,),
//         ));
//   }
// }
//
// class Details extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         flex: 2,
//         child: Container(
//           color: Colors.greenAccent,
//           child: ListView.builder(itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               width: 100,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.orange,
//               ),
//             ),
//           ),itemCount: 10, scrollDirection: Axis.horizontal,),
//         ));
//   }
// }
//
// class Footer extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         flex: 1,
//         child: Container(
//           color: Colors.yellow,
//           child: GridView.count(crossAxisCount: 4,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.blue
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.blue
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.blue
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.blue
//                   ),
//                 ),
//               ),
//             ],),
//         ));
//   }
//
// }
// <-----------------------------Date Format---------------------------------->

// DateFormat.d([locale]) : this('d', locale);
// DateFormat.E([locale]) : this('E', locale);
// DateFormat.EEEE([locale]) : this('EEEE', locale);
// DateFormat.LLL([locale]) : this('LLL', locale);
// DateFormat.LLLL([locale]) : this('LLLL', locale);
// DateFormat.M([locale]) : this('M', locale);
// DateFormat.Md([locale]) : this('Md', locale);
// DateFormat.MEd([locale]) : this('MEd', locale);
// DateFormat.MMM([locale]) : this('MMM', locale);
// DateFormat.MMMd([locale]) : this('MMMd', locale);
// DateFormat.MMMEd([locale]) : this('MMMEd', locale);
// DateFormat.MMMM([locale]) : this('MMMM', locale);
// DateFormat.MMMMd([locale]) : this('MMMMd', locale);
// DateFormat.MMMMEEEEd([locale]) : this('MMMMEEEEd', locale);
// DateFormat.QQQ([locale]) : this('QQQ', locale);
// DateFormat.QQQQ([locale]) : this('QQQQ', locale);
// DateFormat.y([locale]) : this('y', locale);
// DateFormat.yM([locale]) : this('yM', locale);
// DateFormat.yMd([locale]) : this('yMd', locale);
// DateFormat.yMEd([locale]) : this('yMEd', locale);
// DateFormat.yMMM([locale]) : this('yMMM', locale);
// DateFormat.yMMMd([locale]) : this('yMMMd', locale);
// DateFormat.yMMMEd([locale]) : this('yMMMEd', locale);
// DateFormat.yMMMM([locale]) : this('yMMMM', locale);
// DateFormat.yMMMMd([locale]) : this('yMMMMd', locale);
// DateFormat.yMMMMEEEEd([locale]) : this('yMMMMEEEEd', locale);
// DateFormat.yQQQ([locale]) : this('yQQQ', locale);
// DateFormat.yQQQQ([locale]) : this('yQQQQ', locale);
// DateFormat.H([locale]) : this('H', locale);
// DateFormat.Hm([locale]) : this('Hm', locale);
// DateFormat.Hms([locale]) : this('Hms', locale);
// DateFormat.j([locale]) : this('j', locale);
// DateFormat.jm([locale]) : this('jm', locale);
// DateFormat.jms([locale]) : this('jms', locale);
