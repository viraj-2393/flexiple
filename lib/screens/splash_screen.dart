

import 'dart:async';

import 'package:flexiple/screens/intro_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  AnimationController? _controller;
  Animation? sizeAnimation;

  @override
  initState(){
    super.initState();

    //timer to navigate to next screen
    Timer(Duration(seconds: 2),() =>
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IntroScreen()))
    );

    _controller = AnimationController(vsync: this,duration: const Duration(milliseconds: 700));
    sizeAnimation = Tween<double>(begin: 0,end: 200).animate(_controller!);
    _controller!.addListener((){
      setState((){});
    });
    _controller!.forward();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          child: Column(
            children: [
              SizedBox(
                width: sizeAnimation!.value,
                height: 50,
                child: Image.asset('assets/images/flexiple-logo.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 20,),
              const CupertinoActivityIndicator()
            ],
          ),
        )  ,
      ),
    );
  }
}