import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHoures extends StatelessWidget {
  int houres;
  MyHoures({
    super.key,
    required this.houres,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: Text(
          houres.toString(),
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
