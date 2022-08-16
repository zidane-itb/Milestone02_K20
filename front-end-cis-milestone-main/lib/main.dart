import 'package:cis/cubit/features_cubit.dart';
import 'package:cis/ui/pages/coming.dart';
import 'package:cis/ui/pages/failed_page.dart';
import 'package:cis/ui/pages/fill_form.dart';
import 'package:cis/ui/pages/get_started_page.dart';
import 'package:cis/ui/pages/home_page.dart';
import 'package:cis/ui/pages/scan_page.dart';
import 'package:cis/ui/pages/show_data_page.dart';
import 'package:cis/ui/pages/splash_page.dart';
import 'package:cis/ui/pages/validate_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/scan': (context) => const ScanPage(),
          '/home': (context) => const HomePage(),
          '/show-data': (context) => const ShowDataPage(),
          '/failed': (context) => const FailedPage(),
          '/validate': (context) => const ValidatePage(),
          '/coming': (context) => const ComingSoon(),
          '/fill-form': (context) => const FillForm(),
        },
      ),
    );
  }
}
