
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:southpaw/src/core/app_constant.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    bool session = true;
    await Future.delayed(const Duration(seconds: 4));

    if(session == false){
        Navigator.of(context).pushReplacementNamed(AppUtil.home);
    }else{
        Navigator.of(context).pushReplacementNamed(AppUtil.getstarted);
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF192327),
      body: Center(child: Image.asset("assets/img/sensi.png")),
    );
  }
}