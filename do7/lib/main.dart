import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyForm()
      )
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _myForm = GlobalKey<FormState>();
  String? name;
  String? age;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        height: 400,
        child: Column(
        children: [
          const Text("This is a Form which enter your name and age"),
          Form(
            key: _myForm,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? false) {
                      return "Please enter your Name";
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    name = value;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Age",
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? false) {
                      return "Please enter your Age";
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    age = value;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    try {
                      if (_myForm.currentState?.validate() ?? false) {
                        _myForm.currentState?.save();
                        print ("Your Name : $name, Your Age : $age");
                      }} catch (e) {
                      print (e);
                    }
                  },
                  child: const Text("Submit"),
                )
              ],
            )
          )
        ]
      )
    );
  }
}

