import 'package:flutter/material.dart';

class progress extends StatelessWidget {
  const progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '0/4',
              style: TextStyle(
                color: Colors.deepPurple.shade400,
                fontWeight: FontWeight.w600,
                fontSize: 26,
              ),
            ),
            Text(
              '0/12',
              style: TextStyle(
                color: Colors.deepPurple.shade400,
                fontWeight: FontWeight.w600,
                fontSize: 26,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Round',
              style: TextStyle(
                color: Colors.deepPurple.shade400,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              'Goal',
              style: TextStyle(
                color: Colors.deepPurple.shade400,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            )
          ],
        )
      ],
    );
  }
}
