import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyMinutes extends StatelessWidget {
  int mins;
  MyMinutes({
    super.key,
    required this.mins,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: Text(
          mins < 10 ? '0' + mins.toString() : mins.toString(),
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
