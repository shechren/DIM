import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyWidget1();
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      home: MyTextField(),
    );
  }
}

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final myTextController = TextEditingController();
  int txtCount = 0;

  void _counting () {
    setState(() {
      txtCount = myTextController.text.length;
    });
  }


  @override
  void initState() {
    super.initState();
    myTextController.addListener(_counting);
  }

  @override
  void dispose() {
    super.dispose();
    myTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            children: [
              Container(
                width: 400,
                height: 100,
                child: TextField(
                    maxLength: 150,
                    maxLines: 10,
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                    controller: myTextController,
                    decoration: InputDecoration(
                      labelText: "입력!",
                      prefixIcon: const Icon(Icons.text_fields),
                      border: const OutlineInputBorder(),
                      counterText: "${150 - txtCount}자 남았습니다.",
                      errorMaxLines: 150,
                      errorText: "150자까지만 가능합니다.",
                    )
                ),
              ),
              ElevatedButton(onPressed: () {
                print (myTextController.text);
              }, child: const Text("출력"))
            ]
        )
    );
  }
}
