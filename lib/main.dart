import 'package:flutter/material.dart';
import 'package:flutter_application_1/edit_page.dart';

String name = "";
String bio = "";
bool darkmode = false;
Color bg = Colors.white;

void main (){
  runApp(const MaterialApp(
      home: MyApp()
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {

  Color colors = Colors.black;
  List<MaterialColor> colors_list = [Colors.red, Colors.purple, Colors.yellow, Colors.pink, Colors.cyan, Colors.green,];
  int i = 1;


  void Change_text_color(){
    setState(() {
      if (i < colors_list.length){
        colors = colors_list.elementAt(i);
      } else{i = 1;}
      i++;
    });
  }

  void darkMode(){
    setState(() {
      if (!darkmode) {bg = Colors.black87; darkmode = true;}
      else {darkmode = false; bg = Colors.white;}
    });
  }

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return  Scaffold(
      appBar: AppBar(
        actions: [TextButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context) => editpage()));}, child: const Text("Edit"))],
        title:  const Text('Profile'),
        backgroundColor: Colors.grey,

      ),

      backgroundColor: bg,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('Whatsapp.jpg', width: 250, height: 300,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(child: Text('Name: $name\nBio: $bio', style: TextStyle(color: colors),)),
          ),

          Container(
              color: Colors.brown[200],
              // padding: const EdgeInsets.all(20),
              child:  TextButton(onPressed: Change_text_color, child:  const Text("Change text color",),)),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
                color: Colors.brown[200],
                // padding: const EdgeInsets.all(20),
                child:  TextButton(onPressed: darkMode, child:  const Text("Change mode"), )),
          ),

        ],
      ),
    );
  }}
