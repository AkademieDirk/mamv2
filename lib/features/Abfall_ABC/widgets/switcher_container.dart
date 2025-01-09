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
        gradient: const LinearGradient(
          colors: [Colors.blueAccent, Colors.greenAccent], // Farbverlauf
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.transparent,
                  child: Image(
                      height: 90,
                      width: 90,
                      image: AssetImage(
                        picturepath,
                      )),
                )),
          ),
          Text(text)
        ],
      ),
    );
  }
}
