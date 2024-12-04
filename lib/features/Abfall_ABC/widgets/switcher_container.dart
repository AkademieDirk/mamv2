import 'package:flutter/material.dart';

class SwitcherContainer extends StatelessWidget {
  const SwitcherContainer({
    super.key,
    required this.picturepath,
    required this.text,
  });
  final String picturepath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage(
                      picturepath,
                    ))),
          ),
          Text(text)
        ],
      ),
    );
  }
}
