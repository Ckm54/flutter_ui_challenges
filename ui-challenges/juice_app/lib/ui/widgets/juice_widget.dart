part of widgets;

class JuiceWidget extends StatelessWidget {
  const JuiceWidget({
    super.key,
    required this.juiceItem,
    required this.onTap,
  });

  final JuiceEntity juiceItem;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.25,
        child: LayoutBuilder(builder: (context, constraints) {
          final double topPadding = constraints.maxHeight * 0.2;
          final double leftPadding = constraints.maxWidth * 0.1;
          final double imageWidth = constraints.maxWidth * 0.35;
          return GestureDetector(
            onTap: onTap,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: topPadding),
                  decoration: BoxDecoration(
                    color: juiceItem.color,
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: topPadding, left: leftPadding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              juiceItem.name,
                              style: textStyle.copyWith(fontSize: 20),
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: '\$',
                                  style: textStyle.copyWith(fontSize: 16),
                                ),
                                TextSpan(
                                  text: juiceItem.price,
                                  style: textStyle.copyWith(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ]),
                            ),
                            SizedBox(
                              height: 32,
                              width: 100,
                              child: MyButton(
                                text: 'Buy Now',
                                textColor: juiceItem.color,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: imageWidth,
                      child: Image.network(
                        juiceItem.image,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        }));
  }
}

const TextStyle textStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);
