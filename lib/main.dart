import 'package:flutter/material.dart';

import 'core/depedency_injections/configure_depedencies.dart';
import 'flutter_app.dart';

void main() {
  configureDepencies();

  runApp(const FlutterApp());
}
