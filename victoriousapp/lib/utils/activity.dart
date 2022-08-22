import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  final String ActivityTitle;
  final String ActivityDate;
  final int ActivityTime;
  final color;
  const Activities({
    Key? key,
    required this.ActivityTitle,
    required this.ActivityDate,
    required this.ActivityTime,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: color,
          child: Container(
            width: 200,
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      ActivityTitle,
                      style: const TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    // find image and put here
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  ActivityDate,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  ActivityTime.toString() + 'pm',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
