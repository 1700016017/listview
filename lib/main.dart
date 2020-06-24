import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Builder',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'ListView Builder',
            style: TextStyle(color: Colors.black),
          ),
          ),
          body: _PageList(),
      ),
    );
  }
}

class _PageList extends StatefulWidget {
  @override
  _PageListState createState() => _PageListState();
}

class _PageListState extends State<_PageList>{

  List languages =[
    "Dart",
    "Kotlin",
    "Java",
    "PHP",
    "Swift",
    "Javascript",
  ];

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.grey[300],
      child: ListView.builder(
        itemCount : languages.length,
        itemBuilder: (BuildContext context, int index){
          final language = languages[index].toString();
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/logo2.jpg'),
              ),
              title: Text(language),
              trailing: Icon(Icons.check),
            ),
          );
        },
        ),
    );
  }
}
