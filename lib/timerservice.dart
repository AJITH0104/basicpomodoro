import 'dart:async';

import 'package:flutter/material.dart';

class timerservice extends ChangeNotifier {
  late Timer timer;
  double currentduration = 1500;
  double selectedtime = 1500;
  void selecttime(double seconds) {
    currentduration = seconds;
    selectedtime = seconds;
    notifyListeners();
  }
}
