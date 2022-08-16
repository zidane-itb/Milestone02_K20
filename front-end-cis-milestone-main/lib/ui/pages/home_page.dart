import 'package:cis/shared/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/featues_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.only(left: 36, right: 36),
          child: ListView(
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello,\nSpartans!',
                    style: whiteTextStyle.copyWith(
                        fontSize: 20, fontWeight: semibold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/notification_icon.png'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 250,
                margin: const EdgeInsets.only(top: 24, bottom: 8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/home_image.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Text(
                'Features',
                style:
                    whiteTextStyle.copyWith(fontSize: 20, fontWeight: medium),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FeatureItems(
                    title: 'Show Data',
                    assets: 'assets/show_data_icon.png',
                    routeName: '/scan',
                    index: 0,
                  ),
                  FeatureItems(
                    title: 'Validate',
                    assets: 'assets/validate_icon.png',
                    routeName: '/scan',
                    index: 1,
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FeatureItems(
                    title: 'Auto Fill Form',
                    assets: 'assets/fill_form_icon.png',
                    routeName: '/scan',
                    index: 2,
                  ),
                  FeatureItems(
                    title: 'Connect',
                    assets: 'assets/connect_icon.png',
                    routeName: '/coming',
                    index: 3,
                  )
                ],
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
