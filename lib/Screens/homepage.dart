// ignore_for_file: deprecated_member_use
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:routenavigation_unamed/Screens/secondscreen.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.to(
                  // ignore: prefer_const_constructors
                  Secondscreen(),

                  transition: Transition.cupertino,
                  duration: const Duration(microseconds: 4000),
                  //curve: Curves.bounceInOut,
                );
              },
              child: const Text("Click on"),
            ),
          ],
        ),
      ),
    );
  }
}
