import 'package:flutter/material.dart';

class CalendarCardWidget extends StatelessWidget {
  const CalendarCardWidget({
    super.key,
    required this.picturePath,
    required this.text,
  });
  final String picturePath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(
              fit: BoxFit.fill,
              height: 120,
              width: 120,
              image: AssetImage(picturePath)),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}
