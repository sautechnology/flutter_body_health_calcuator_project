import 'package:flutter/material.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 239, 235),
      body: Stack(
        children: [
          // ช้นที่ 1 คือ ชื่อแอปและรูปตรงกลาง
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Body Health Calculator',
                  style: TextStyle(
                    color: Colors.deepOrange[800],
                    fontSize: MediaQuery.of(context).size.height * 0.027,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Image.asset(
                  'assets/images/calculate.png',
                  width: MediaQuery.of(context).size.height * 0.15,
                  height: MediaQuery.of(context).size.height * 0.15,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'คำนวณหาค่าดัชนีมวลกาย (BMI)',
                  style: TextStyle(
                    color: Colors.deepOrange[800],
                    fontSize: MediaQuery.of(context).size.height * 0.017,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'คำนวณหาแคลอรี่ที่ร่างกายต้องการ (BMR)',
                  style: TextStyle(
                    color: Colors.deepOrange[800],
                    fontSize: MediaQuery.of(context).size.height * 0.017,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // ชั้นที่ 2 คือ logo ม. และข้อความข้างล่าง
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/saulogo.png',
                  width: MediaQuery.of(context).size.height * 0.08,
                  height: MediaQuery.of(context).size.height * 0.08,
                  fit: BoxFit.cover,
                ),
                Text(
                  '© 2026 SAU. All rights reserved. 😁✌️✌️✌️',
                ),
                Text(
                  'Created by Software Devleopment Team',
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
