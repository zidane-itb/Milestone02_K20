import 'dart:ffi';
import 'package:cis/remote/data_api.dart';
import 'package:cis/remote/remote_api.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ShowDataPage extends StatefulWidget {
  const ShowDataPage({Key? key}) : super(key: key);

  @override
  _ShowDataPageState createState() => _ShowDataPageState();
}

class _ShowDataPageState extends State<ShowDataPage> {
  var data;
  var isLoaded = false;

  @override
  void initState() {
    getData();
  }

  getData() async {
    data = await RemoteApi().getData();
    setState(() {
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(left: 24, right: 24),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            const SizedBox(height: 50),
            Text(
              'Show Data',
              textAlign: TextAlign.center,
              style:
                  whiteTextStyle.copyWith(fontSize: 28, fontWeight: semibold),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.only(top: 40, bottom: 40),
              decoration: BoxDecoration(
                color: kWhiteColor.withOpacity(0.4),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  ),
                  Text(
                    // 'Robert Vancini'
                    data![0].fullName,
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'NIK',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  ),
                  Text(
                    //'00307734661268'
                    data[0].nik,
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Jenis Kelamin',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  ),
                  Text(
                    //'Laki-laki'
                    data[0].gender,
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Alamat',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  ),
                  Text(
                    //'Jl. Martadinata, Soreang, Kab. Bandung, Jawa Barat'
                    data[0].address,
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Pekerjaan',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  ),
                  Text(
                    'Mahasiswa',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Status Pernikahan',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  ),
                  Text(
                    //
                    data[0].statusPernikahan,
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Golongan Darah',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  ),
                  Text(
                    'O',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ],
              ),
            ),
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
                  'Back to Home',
                  style:
                      whiteTextStyle.copyWith(fontSize: 20, fontWeight: medium),
                ),
              ),
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
