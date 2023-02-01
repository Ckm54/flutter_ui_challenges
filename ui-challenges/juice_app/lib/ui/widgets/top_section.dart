import 'package:flutter/material.dart';
import 'package:juice_app/main.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.juice,
  });

  final JuiceEntity juice;

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

            return Container(
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
            );
          },
        ),
      ),
    );
  }
}
