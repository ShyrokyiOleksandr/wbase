import 'package:flutter/material.dart';

import 'service_locator.dart';
import 'wbase_app/wbase_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainServiceLocator.setup();

  runApp(const WBaseApp());
}


