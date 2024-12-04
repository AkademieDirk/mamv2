import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
    super.key,
    required this.text,
    required this.newsimagepath,
  });
  final String text;
  final String newsimagepath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 280,
      //! wie bekomme ich den Shadow in eine Vorlage um ihn wieder zu verwenden?

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 6), // changes position of shadow
          ),
        ],
        image:
            DecorationImage(fit: BoxFit.fill, image: AssetImage(newsimagepath)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              backgroundColor: Colors.white70,
            ),
      ),
    );
  }
}
