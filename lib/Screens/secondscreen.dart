import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ignore: deprecated_member_use
            RaisedButton(
              color: Colors.yellow,
              child: const Text("Change Theme"),
              onPressed: () => {
                Get.bottomSheet(Wrap(
                  children: [
                    ListTile(
                      title: const Text("Light Theme"),
                      leading: const Icon(Icons.wb_sunny_outlined),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },
                      iconColor: Colors.yellow,
                    ),
                    ListTile(
                      title: const Text("Dark Theme"),
                      leading: const Icon(Icons.wb_sunny),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                      iconColor: Colors.yellow,
                    )
                  ],
                ))
              },
            ),
            // ignore: deprecated_member_use
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
                child: const Text("Go To Home"), onPressed: () => {Get.back()})
          ],
        ),
      ),
    );
  }
}
