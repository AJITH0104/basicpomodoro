import 'package:flutter/material.dart';
import 'package:pomodoro/timerservice.dart';
import 'package:provider/provider.dart';

class timerops extends StatelessWidget {
  timerops({super.key});
  List timeroptions = [
    "300", //5
    "600", //10
    "900", //15
    "1200", //20
    "1500", //25
    "1800", //30
    "2100", //35
    "2400", //40
    "2700", //45
    "3000", //50
    "3300", //55
  ];
  double selectedtime = 1500;
  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<timerservice>(context);
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 250),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: timeroptions.map((time) {
          return InkWell(
            onTap: () => provide.selecttime(double.parse(time)),
            child: Container(
              margin: EdgeInsets.only(left: 20),
              width: 80,
              height: 60,
              decoration: int.parse(time) == provide.selectedtime
                  ? BoxDecoration(
                      color: Color(0xFF9461E5),
                      borderRadius: BorderRadius.circular(5),
                    )
                  : BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF9461E5),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
              child: Center(
                child: Text(
                  (int.parse(time) ~/ 60).toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: int.parse(time) == provide.selectedtime
                          ? Colors.black
                          : Color(0xFF9461E5),
                      fontSize: 25),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
