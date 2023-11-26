import 'package:flutter/material.dart';

class MyAmPm extends StatelessWidget {
  bool isItAm;
  MyAmPm({
    super.key,
    required this.isItAm,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: Text(
          isItAm == true ? 'am' : 'pm',
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
