import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:juice_app/ui/ui.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: const Color(0xFFF3BE39),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.remove,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '0',
            style: textStyle,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.add,
            color: Colors.white,
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
    );
  }
}
