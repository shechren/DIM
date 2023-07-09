import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("메인화면"),
        ),
        drawer: Drawer(
          width: 150,
          child: ListView(
            children: const [
              ListTile(title: Text("취업")),
              ListTile(title: Text("문화")),
              ListTile(title: Text("자립준비")),
              ListTile(title: Text("고립은둔")),
              ListTile(title: Text("센터목록")),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "show",
              icon: Icon(Icons.search, color: Colors.indigo),
            ),
            BottomNavigationBarItem(
              label: "add",
              icon: Icon(Icons.add, color: Colors.amberAccent),
            ),
            BottomNavigationBarItem(
              label: "settings",
              icon: Icon(Icons.settings, color: Colors.black45),
            ),
        ])
      ),
    );
  }
}
