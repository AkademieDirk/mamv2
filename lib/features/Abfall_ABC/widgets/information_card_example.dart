import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/Abfall_ABC/widgets/classes/information_card_class.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({super.key, required this.trashdata});
  final List<InformationCardClass> trashdata;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: 300,
      child: Card(
        child: Column(children: [
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Text(
                trashdata[0].title1,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Expanded(child: SizedBox()),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: closebutton),
              verticalSpacing,
            ],
          ),
          verticalSpacing,
          const Image(
            height: 100,
            width: 100,
            image: AssetImage("assets/images/Abbeizer.jpg"),
          ),
          verticalSpacing,
          Row(children: [
            const Expanded(child: SizedBox()),
            Text(
              trashdata[0].title2,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Expanded(child: SizedBox()),
          ]),
          verticalSpacing,
          Text(
            trashdata[0].trashDescription,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          verticalSpacing,
          Text(trashdata[0].danger,
              style: Theme.of(context).textTheme.bodySmall),
        ]),
      ),
    ));
  }
}
