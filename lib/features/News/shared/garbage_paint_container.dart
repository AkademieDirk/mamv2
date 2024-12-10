import 'package:flutter/material.dart';

class GarbageCanPaintContainer extends StatelessWidget {
  const GarbageCanPaintContainer({
    super.key,
    required this.text,
    required this.trashcolorimagepath,
  });
  final String text;
  final String trashcolorimagepath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //! wie bekomme ich den Shadow in eine Vorlage um ihn wieder zu verwenden?

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              trashcolorimagepath,
            ),
          ),
          Text(text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
