import 'package:flutter/material.dart';

import 'package:mamv2/config/themes/themes.dart';

class MyOwnContainer extends StatelessWidget {
  const MyOwnContainer({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 300,
        decoration: borderBasics,
        alignment: Alignment.centerLeft,
        child: Text(text, style: Theme.of(context).textTheme.bodySmall));
  }
}
