part of widgets;

class MycustomAppBar extends StatelessWidget {
  const MycustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      margin: const EdgeInsets.only(left: 20, top: 32, right: 20, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
              'https://flutter4fun.com/wp-content/uploads/2021/09/menu.png'),
          const Text(
            'B-Juices',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
          ),
          Image.network(
              'https://flutter4fun.com/wp-content/uploads/2021/09/bag.png'),
        ],
      ),
    );
  }
}
