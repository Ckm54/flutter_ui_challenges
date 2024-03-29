import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
    required this.color,
    required this.currentCount,
    required this.onDecreaseClicked,
    required this.onIncreaseClicked,
  });

  final int currentCount;
  final VoidCallback onIncreaseClicked;
  final VoidCallback onDecreaseClicked;
  final Color color;
  final textStyle =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            width: 16,
          ),
          GestureDetector(
            onTap: onDecreaseClicked,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 30,
            child: Text(
              currentCount.toString(),
              style: textStyle,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: onIncreaseClicked,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
    );
  }
}
