import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testudacoding/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginPage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/pnp.png',height: 250,width: 250,),
            SizedBox(height: 30,),
            Text("POLITEKNIK NEGERI PADANG", style: TextStyle(
              color: Color(0xfff36523),
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}
