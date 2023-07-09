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
        title: "MyApp",
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              children: [
                const SizedBox(height: 20, width: 20),
                Row(
                  children: [
                    const SizedBox(width: 10, height: 10),
                    ConWidget(
                      key: UniqueKey(),
                      color: Theme.of(context).colorScheme.primary,
                      text: "동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세",
                    ),
                    const SizedBox(width: 10, height: 10),
                    ConWidget(
                      key: UniqueKey(),
                      color: Theme.of(context).colorScheme.secondary,
                      text:
                      "울산성 전투는 임진왜란에서 가장 큰 전투이며 조명 연합군 58,000여명이 동원되었으나 공격이 좌절되었다.",
                    ),
                    const SizedBox(width: 10, height: 10),
                    ConWidget(
                      key: UniqueKey(),
                      color: Theme.of(context).colorScheme.tertiary,
                      text:
                      "플로렌스 포스터 젠킨스는 음치로 유명하지만 카네기 홀에서 밤의 여왕의 아리아를 선보인 적이 있다.",
                    ),
                  ],
                ),
                const SizedBox(height: 20, width: 20),
                Row(
                  children: [
                    const SizedBox(width: 10, height: 10),
                    ConWidget(
                      key: UniqueKey(),
                      color: Theme.of(context).colorScheme.primaryContainer,
                      text:
                      "톰 크린은 로버트 스콧 그리고 어니스트 섀클턴 모두와 함께 여행을 떠나본 기록이 있으며 3번의 남극 탐험에서 모두 생환했다.",
                    ),
                    const SizedBox(width: 10, height: 10),
                    ConWidget(
                      key: UniqueKey(),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      text:
                      "케르마데크 해구는 세계에서 2번째로 깊은 해구이지만 마리아나 해구에 비해 상대적으로 덜 알려진 지명이다.",
                    ),
                    const SizedBox(width: 10, height: 10),
                    ConWidget(
                      key: UniqueKey(),
                      color: Theme.of(context).colorScheme.tertiaryContainer,
                      text:
                      "프로그래머가 되려면 정말로 여러가지 노력을 필요로 한다. 수학, 영어는 기본이며 컴퓨터식 사고를 필수로 한다.",
                    ),
                  ],
                )
              ],
            )
        )
    );
  }
}

class ConWidget extends StatelessWidget {
  final Color color;
  final String text;
  const ConWidget({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}