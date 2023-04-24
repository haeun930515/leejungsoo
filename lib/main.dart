import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:leejungsoo/firebase_options.dart';
import 'package:leejungsoo/provider/bottom_navigation_provider.dart';
import 'package:leejungsoo/provider/firebase_provider.dart';
import 'package:leejungsoo/ui/home/home.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => BottomNavigationProvider()),
        ChangeNotifierProvider(
            create: (BuildContext context) => FirebaseProvider())
      ],
      child: Home(),
    ));
  }
}
