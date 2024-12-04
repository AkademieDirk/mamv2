// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SizedElevationButton extends StatelessWidget {
  SizedElevationButton({
    super.key,
    required this.text,
    required this.screenname,
  });
  var screenname;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => screenname));
          },
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          )),
    );
  }
}
