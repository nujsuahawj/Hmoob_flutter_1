import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Myfull(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class Myfull extends StatefulWidget {
  @override
  _MyfullState createState() => _MyfullState();
}

class _MyfullState extends State<Myfull> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    data.add(Text("ກົດເພື່ອເພີມເລກ"));
    data.add(Text(
      "$number",
      style: TextStyle(fontSize: 40),
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text("ໜ້າລັກ"),
      ),
      // body: Text("ສະບາຍດີ"),
      body: Center(
        // child: Text(
        //   "ສະບາຍດີ",
        //   style: TextStyle(fontSize: 30, color: Colors.purple),
        // ),
        // child: Image(
        //   image: NetworkImage(
        //       "https://hmongstories.000webhostapp.com/images/profile-1.jpeg"),
        // ),
        child: ListView(
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addnumber();
          
        },
        child:
            // Text("ເພີມ"),
            Icon(Icons.add),
      ),
    );
  }

  void addnumber() {
    setState(() {
      number++;
    });
  }
}
