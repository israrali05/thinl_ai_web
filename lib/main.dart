import 'package:flutter/material.dart';
import 'package:project22/provider/event_screen_controller.dart';
import 'package:project22/provider/feedback_controller.dart';
import 'package:project22/provider/moderator_benchmark_controller.dart/moderator_bechmark.dart';
import 'package:project22/screen/drawer/drawer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => EventScreenProvider()),
        ChangeNotifierProvider(create: (_) => CheckboxController()),
        ChangeNotifierProvider(create: (_) => CheckboxController2()),
        ChangeNotifierProvider(create: (_) => SpeechProvider()),
        ChangeNotifierProvider(create: (_) => IdeasControllers()),
        ChangeNotifierProvider(create: (_) => ModeratorControllers()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Think AI',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CustomDrawer(),
      ),
    );
  }
}
