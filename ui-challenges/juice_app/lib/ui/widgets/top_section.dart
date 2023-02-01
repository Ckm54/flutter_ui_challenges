part of widgets;

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.juice,
    required this.count,
    required this.onDecreaseClicked,
    required this.onIncreaseClicked,
  });

  final JuiceEntity juice;
  final int count;
  final VoidCallback onDecreaseClicked;
  final VoidCallback onIncreaseClicked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 0.86,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final imageHeight = constraints.maxHeight * 0.7;
            final imageHorizontalMargin = constraints.maxWidth * 0.15;
            final imageBottomMargin = constraints.maxHeight * 0.07;

            return Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 26),
                  decoration: BoxDecoration(
                    color: juice.color,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: imageHorizontalMargin,
                        right: imageHorizontalMargin,
                        bottom: imageBottomMargin,
                      ),
                      child: Image.network(
                        'https://flutter4fun.com/wp-content/uploads/2021/09/full.png',
                        height: imageHeight,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Counter(
                    currentCount: count,
                    color: juice.color,
                    onDecreaseClicked: onDecreaseClicked,
                    onIncreaseClicked: onIncreaseClicked,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
