import 'package:cis/shared/theme.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            Container(
              width: 294,
              height: 172.9,
              margin: const EdgeInsets.only(top: 230, bottom: 24),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/get_started_image.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Text(
              'Make It Simple\nRemove Your KTP Fotocopy',
              textAlign: TextAlign.center,
              style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: medium),
            ),
            const SizedBox(height: 120),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
              child: Container(
                alignment: Alignment.center,
                width: 221,
                height: 55,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/button_background.png'),
                      fit: BoxFit.cover),
                ),
                child: Text(
                  'Get Started',
                  style:
                      whiteTextStyle.copyWith(fontSize: 20, fontWeight: medium),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
