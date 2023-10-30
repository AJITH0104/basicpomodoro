import 'package:flutter/material.dart';

class timecontroller extends StatefulWidget {
  const timecontroller({super.key});

  @override
  State<timecontroller> createState() => _timecontrollerState();
}

class _timecontrollerState extends State<timecontroller> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade400,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.pause,
            size: 55,
          )),
    );
  }
}
