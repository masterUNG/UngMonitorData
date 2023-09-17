import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ungmonitordata/states/authen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp().then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Authen(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
