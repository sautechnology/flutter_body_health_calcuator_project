import 'package:flutter/material.dart';
import 'package:flutter_body_health_calcuator_project/views/home_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {

  @override
  void initState() {
    // หน่วงหน้าจอไว้ 3 วิ แล้วเปิดไปหน้า HomeUI แบบย้อนกลับไม่ได้
    Future.delayed(
      //เวลาที่หน่วง
      Duration(
        seconds: 3,
      ),
      //เมื่อครบแล้วจะให้ทำอะไร
      (){
        //เปิดไปหน้า HomeUI แบบย้อนกลับไม่ได้
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        );
      }
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/calculate.png',
              width: MediaQuery.of(context).size.height * 0.2,
              height: MediaQuery.of(context).size.height * 0.2,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Body Health Calculate',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              height: 50,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
