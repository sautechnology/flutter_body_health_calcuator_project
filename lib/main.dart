import 'package:flutter/material.dart';
import 'package:flutter_body_health_calcuator_project/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

//-------------------------------

void main() {
  runApp(
    //คลาสที่เรียกใช้ widget หล้กของแอปฯ (MaterialApp)
    FlutterBodyHealthCalcuatorProject(),
  );
}

//-------------------------------

class FlutterBodyHealthCalcuatorProject extends StatefulWidget {
  const FlutterBodyHealthCalcuatorProject({super.key});

  @override
  State<FlutterBodyHealthCalcuatorProject> createState() => _FlutterBodyHealthCalcuatorProjectState();
}

class _FlutterBodyHealthCalcuatorProjectState extends State<FlutterBodyHealthCalcuatorProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}