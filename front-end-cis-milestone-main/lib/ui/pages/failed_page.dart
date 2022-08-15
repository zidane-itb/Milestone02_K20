import 'package:flutter/material.dart';

class FailedPage extends StatelessWidget {
  const FailedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover),
        ),
        child: Center(
            child: Container(
          width: 291,
          height: 314,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/failed_image.png'))),
        )),
      ),
    );
  }
}
