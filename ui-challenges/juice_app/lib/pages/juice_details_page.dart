import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:juice_app/main.dart';
import 'package:juice_app/ui/ui.dart';
import 'package:juice_app/ui/widgets/counter.dart';

class JuiceDetailsPage extends StatefulWidget {
  const JuiceDetailsPage({
    super.key,
    required this.juice,
  });

  final JuiceEntity juice;

  @override
  State<JuiceDetailsPage> createState() => _JuiceDetailsPageState();
}

class _JuiceDetailsPageState extends State<JuiceDetailsPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Stack(
          children: [
            TopSection(
              juice: widget.juice,
              count: count,
              onIncreaseClicked: () {
                setState(() {
                  count++;
                });
              },
              onDecreaseClicked: () {
                setState(() {
                  count--;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
