import 'dart:async';

import 'package:cis/cubit/features_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nfc_manager/nfc_manager.dart';

import '../../shared/theme.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

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
            width: 200,
            height: 220,
            margin: const EdgeInsets.only(top: 200),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/scan_image.png'),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 100),
          TextButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Colors.black45,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 380,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 45, bottom: 24),
                            width: 130,
                            height: 130,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/put_card_icon.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Ready to Scan',
                            style: whiteTextStyle.copyWith(
                                fontSize: 16, fontWeight: medium),
                          ),
                          Text(
                            'Put Your E-KTP',
                            style: whiteTextStyle.copyWith(
                                fontSize: 28, fontWeight: semibold),
                          ),
                        ],
                      ),
                    );
                  });

              ValueNotifier<dynamic> result = ValueNotifier(null);

              void tagRead() {
                NfcManager.instance.startSession(
                    onDiscovered: (NfcTag tag) async {
                  result.value = tag.data;
                  Map tagNfca = tag.data['nfca'];
                  print('read: ${tagNfca}');
                  NfcManager.instance.stopSession();
                });
              }

              FutureBuilder<bool>(
                  future: NfcManager.instance.isAvailable(),
                  builder: (context, ss) => ss.data != true
                      ? Center(
                          child: Text('NfcManager.isAvailable(): ${ss.data}'))
                      : ElevatedButton(
                          child: Text('Tag Read'), onPressed: tagRead));

              int index = context.read<FeaturesCubit>().state;
              Timer(const Duration(seconds: 3), () {
                switch (index) {
                  case 0:
                    Navigator.pushNamed(context, '/show-data');
                    break;
                  case 1:
                    Navigator.pushNamed(context, '/validate');
                    break;
                  case 2:
                    Navigator.pushNamed(context, '/fill-form');
                    break;
                  case 3:
                    Navigator.pushNamed(context, '/coming');
                    break;
                  default:
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'home', (route) => false);
                }
              });
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
                'Scan Now',
                style:
                    whiteTextStyle.copyWith(fontSize: 20, fontWeight: medium),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
