import 'package:flutter/material.dart';
import 'main.dart';

void editt_page(){
  runApp(const MaterialApp(
      home: editpage()
  ));
}


class editpage extends StatefulWidget {
  const editpage({super.key});

  @override
  State<editpage> createState() => _editpageState();
}


class _editpageState extends State<editpage> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _biocontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        actions: [TextButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));}, child: const Text("Main"))],
        title:  const Text('Profile'),
        backgroundColor: Colors.grey,

      ),


      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('Whatsapp.jpg', width: 250, height: 300,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 360),
            child: TextField(decoration: const InputDecoration(hintText: "Name"),textAlign: TextAlign.center, controller: _namecontroller,),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 360, vertical: 15),
            child: TextField(decoration: const InputDecoration(hintText: "Bio"),textAlign: TextAlign.center, controller: _biocontroller,),
          ),

          Container(
              color: Colors.brown[200],
              child:  TextButton(onPressed: (){
                name = _namecontroller.text;
                bio = _biocontroller.text;
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
              }
                , child:  const Text("Update"), )),

        ],
      ),
    );
  }}
