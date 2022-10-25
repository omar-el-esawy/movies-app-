import 'package:flutter/material.dart';
import 'package:iv/view/pages/loginPage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _navigate();
    super.initState();
  }

  void _navigate() async {
    await Future.delayed(Duration(milliseconds: 1000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LogIn(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/images/Group 127.png'),
      ),
    );
  }
}
