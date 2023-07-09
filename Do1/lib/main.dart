import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("고립은둔청년네트워크"),
          ),
          body:
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black12, Colors.black])
          ),
          width: 1000,
          height: 1000,
          child: const Column(
            children: [
              SizedBox(height: 20),
            Text(
              "고립은둔청년네트워크 샘플 페이지입니다.",
              softWrap: false,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,)
            ),
              SizedBox(height: 15),
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon (
                  Icons.accessibility_rounded,
                  color: Colors.green, size: 200,
                ),
                Icon (
                  Icons.accessibility_rounded,
                  color: Colors.greenAccent, size: 200,
                ),
                Icon (
                  Icons.accessibility_rounded,
                  color: Colors.lightGreen, size: 200,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "고립은둔청년네트워크는 전국의 고립청년 및 은둔청년을 돕기 위해 활동합니다.\n"
              "현재 아직 결성된 것은 아니며 본 이름 또한 가칭을 사용합니다.\n"
              "앞으로 어떠한 일을 진행할지도 인원 구성이 어떻게 될지도 정해지지 않았지만\n"
              "우리는 앞으로 소외된 청년들이 없도록 노력하여 사회에 기여하고 싶습니다.\n"
            ,
            softWrap: false,
            textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),)],
          ),
        ),
      ),
    );
  }
}
