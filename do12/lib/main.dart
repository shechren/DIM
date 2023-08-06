import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Home());
}


class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // isHeart 기본값 = true
  bool _isHeart = true;


  void ChangeState() {
    setState(() {
      // heartChanged 역할은 bool을 반전시키는 것
      _isHeart = !_isHeart;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
              child: SizedBox(
                width: 400,
                height: 400,
                // myIcon을 불러올 적에 isHeart와 heartChanged의 값을 지정한다.
                child: myIcon(isHeart: _isHeart, heartChanged: ChangeState),
              ),
            )
        )
    );
  }
}
class myIcon extends StatelessWidget {
  final bool isHeart; // callback Property
  final VoidCallback heartChanged; // callback Function

  const myIcon({
    // isHeart와 heartChanged -> required
    required this.isHeart,
    required this.heartChanged,
    Key? key,
  }) : super(key: key);

  final Icon _heartIcon = const Icon(FontAwesomeIcons.solidHeart, color: Colors.red, size: 50);
  final Icon _heartBlankIcon = const Icon(FontAwesomeIcons.heart, color: Colors.red, size: 50);

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: heartChanged,
            child: isHeart ? _heartIcon : _heartBlankIcon),
      ],
    );
  }
}