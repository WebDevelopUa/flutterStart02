import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import './widgets/App.dart';

void main() {
  setPathUrlStrategy();
  runApp(App());
}
