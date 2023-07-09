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
                    Container (
                      width: 100,
                      height: 100,
                      color: Theme.of(context).colorScheme.primary,
                      child: const Text("동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(width: 10, height: 10),
                    Container (
                      width: 100,
                      height: 100,
                      color: Theme.of(context).colorScheme.secondary,
                      child: const Text("동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(width: 10, height: 10),
                    Container (
                      width: 100,
                      height: 100,
                      color: Theme.of(context).colorScheme.tertiary,
                      child: const Text("동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20, width: 20),
                Row(
                  children: [
                    const SizedBox(width: 10, height: 10),
                    Container (
                      width: 100,
                      height: 100,
                      color: Theme.of(context).colorScheme.primaryContainer,
                      child: const Text("동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(width: 10, height: 10),
                    Container (
                      width: 100,
                      height: 100,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      child: const Text("동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(width: 10, height: 10),
                    Container (
                      width: 100,
                      height: 100,
                      color: Theme.of(context).colorScheme.tertiaryContainer,
                      child: const Text("동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(fontSize: 15),
                      ),
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

//        ConWidget(
//                   key: UniqueKey(),
//                   color: Theme.of(context).colorScheme.primary,
//                   text:
//                       "동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세",
//                 ),