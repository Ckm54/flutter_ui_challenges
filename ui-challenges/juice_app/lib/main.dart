import 'package:flutter/material.dart';
import 'package:juice_app/ui/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Juice app demo'),
    );
  }
}

final juiceList = [
  JuiceEntity(
    name: 'Besom Yellow Juice',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice1.png',
    price: '19.99',
    color: const Color(0xFFF3BE39),
  ),
  JuiceEntity(
    name: 'Besom Orange Juice',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice2.png',
    price: '19.99',
    color: const Color(0xFFDC691F),
  ),
  JuiceEntity(
    name: 'Orange Juice',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice2.png',
    price: '19.99',
    color: const Color.fromARGB(255, 85, 220, 31),
  ),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const MycustomAppBar(),
              Expanded(
                child: Center(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(20.0),
                    itemBuilder: (context, index) {
                      return JuiceWidget(juiceItem: juiceList[index]);
                    },
                    itemCount: juiceList.length,
                  ),
                ),
              ),
            ],
          ),
          const BottomNavigation(),
        ],
      ),
    );
  }
}

class JuiceEntity {
  final String name;
  final String image;
  final String price;
  final Color color;

  JuiceEntity({
    required this.name,
    required this.image,
    required this.price,
    required this.color,
  });
}
