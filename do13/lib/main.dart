import 'package:flutter/material.dart';
import "package:image_picker/image_picker.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeState();
  }
}

class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  State<HomeState> createState() => _HomeState();
}

class _HomeState extends State<HomeState> {
  XFile? receiveImage;

  void imageAdd() async {
    final myImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      receiveImage = myImage;
    });
  }

  Widget notImage () {
    return GestureDetector(
      onTap: imageAdd,
      child: const Icon(Icons.add, size: 100,),
    );
  }

  Widget renderImage () {
    return Image.network(receiveImage!.path);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: receiveImage == null ? notImage() : renderImage(),
      )
    );
  }
}
