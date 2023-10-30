import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomodoro/pomoscreen.dart';

class lastpg extends StatelessWidget {
  const lastpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Text(
            'Congratulations on completing the focus period if u would like to continue click below',
            style: GoogleFonts.playfairDisplay(
                fontSize: 50, color: Colors.deepPurple.shade400),
          ),
          FilledButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => pomoscreen())),
              child: Text("One more Session!"))
        ],
      ),
    );
  }
}
