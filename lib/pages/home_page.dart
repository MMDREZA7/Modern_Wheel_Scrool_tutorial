import 'package:flutter/material.dart';
import 'package:modern_wheel_scrool_tutorial/components/hour.dart';
import 'package:modern_wheel_scrool_tutorial/components/minut.dart';
import 'package:modern_wheel_scrool_tutorial/components/apmp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              // hour
              Expanded(
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 100,
                  physics: const FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 13,
                    builder: (context, index) {
                      return MyHoures(
                        houres: index,
                      );
                    },
                  ),
                ),
              ),

              // min
              Expanded(
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 100,
                  physics: const FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 61,
                    builder: (context, index) {
                      return MyMinutes(
                        mins: index,
                      );
                    },
                  ),
                ),
              ),

              // pm or am
              Expanded(
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 100,
                  physics: const FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 2,
                    builder: (context, index) {
                      if (index == 0) {
                        return MyAmPm(isItAm: true);
                      } else {
                        return MyAmPm(isItAm: false);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
