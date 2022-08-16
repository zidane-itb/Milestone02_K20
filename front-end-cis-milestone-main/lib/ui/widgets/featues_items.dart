import 'package:cis/cubit/features_cubit.dart';
import 'package:cis/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureItems extends StatelessWidget {
  final String title;
  final String assets;
  final String routeName;
  final int index;
  const FeatureItems(
      {Key? key,
      required this.title,
      required this.assets,
      required this.routeName,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<FeaturesCubit>().setFeatures(index);
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        width: 120,
        height: 120,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/features_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(assets),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            )
          ],
        ),
      ),
    );
  }
}
