import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final manifestContent = await rootBundle.loadString('AssetManifest.json');
  final Map<String, dynamic> manifestMap = json.decode(manifestContent);
  print (manifestMap);
  final imagePaths = manifestMap.keys
      .where((key) => key.contains('assets/images/'))
      .toList();

  print (imagePaths);
  runApp(_Screen(imagePaths: imagePaths));
}

class _Screen extends StatefulWidget {
  final List<String> imagePaths;

  const _Screen({Key? key, required this.imagePaths}) : super(key: key);

  @override
  State<_Screen> createState() => _ScreenState();
}

class _ScreenState extends State<_Screen> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            _pageController.animateToPage(
                (_pageController.page!.toInt() + 1) % widget.imagePaths.length,
                duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            );
          },
          child: PageView(
            controller: _pageController,
            children: [
              for (int i = 0; i < widget.imagePaths.length; i++)
                Image.asset(widget.imagePaths[i], fit: BoxFit.cover)
            ],
          ),
        ),
      ),
    );
  }
}