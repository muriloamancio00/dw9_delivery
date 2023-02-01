import 'package:flutter/material.dart';

import 'App/core/config/env/env.dart';
import 'App/dw9_delivery_app.dart';

Future<void> main() async {
  await Env.i.load();
  runApp(const Dw9DeliveryApp());
}
