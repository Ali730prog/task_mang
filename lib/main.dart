import 'package:flutter/material.dart';
import 'package:task_manage_ment/app_screen/splash_screen/splash_screen.dart';

main(){
  runApp(MaterialApp(home: TaskApp(),));
}
class TaskApp extends StatefulWidget {
  const TaskApp({super.key});

  @override
  State<TaskApp> createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
