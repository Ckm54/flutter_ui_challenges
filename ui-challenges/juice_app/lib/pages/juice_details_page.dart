import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:juice_app/main.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('details page'),
      ),
    );
  }
}
