import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomodoro/timeoprions.dart';
import 'package:pomodoro/timerservice.dart';
import 'package:provider/provider.dart';

class pomoscreen extends StatefulWidget {
  pomoscreen({super.key});

  @override
  State<pomoscreen> createState() => _pomoscreenState();
}

class _pomoscreenState extends State<pomoscreen> {
  List<Color> c = [Colors.black45, Colors.deepPurple];

  CountDownController controller = CountDownController();

  double selectedtime = 1500;

  bool ispause = false;
  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<timerservice>(context);
    int t = provide.currentduration.toInt();
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        centerTitle: true,
        title: Text(
          "Pomodoro Timer",
          style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: Color(0xFF9461E5)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  controller.restart(duration: provide.currentduration.toInt());
                });
              },
              icon: Icon(
                Icons.restart_alt,
                size: 50,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Focus',
                style: GoogleFonts.sanchez(
                  color: Color(0xFF9461E5),
                  fontSize: 40,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.grey,
                    )
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      controller.restart(
                          duration: provide.currentduration.toInt());
                    });
                  },
                  child: CircularCountDownTimer(
                    controller: controller,
                    initialDuration: 10,
                    autoStart: true,
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 300,
                    duration: 10, //t, //in secs
                    fillColor: Colors.black45,
                    ringColor: Colors.deepPurple,
                    backgroundColor: Colors.black,
                    strokeWidth: 10,
                    strokeCap: StrokeCap.round,
                    onChange: (value) {},

                    textStyle: GoogleFonts.montserrat(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    isReverse: true,
                    isReverseAnimation: true,
                    timeFormatterFunction:
                        (defaultFormatterFunction, duration) {
                      if (duration.inSeconds == 0) {
                        return 'hurray';
                      } else {
                        return Function.apply(
                            defaultFormatterFunction, [duration]);
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              timerops(),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade400,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    if (ispause) {
                      setState(() {
                        ispause = false;
                        t = provide.selectedtime.toInt();
                        controller.resume();
                      });
                    } else {
                      setState(() {
                        ispause = true;
                        t = provide.currentduration.toInt();
                        controller.pause();
                      });
                    }
                  },
                  icon: Icon(
                    ispause == true ? Icons.pause : Icons.play_arrow_sharp,
                    size: 55,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //  progress(),
            ],
          ),
        ),
      ),
    );
  }
}
