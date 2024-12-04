import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/Abfall_ABC/screens/list_view_trash_abc.dart';
import 'package:mamv2/features/Abfall_ABC/widgets/switcher_container.dart';
import 'package:mamv2/features/Muelltrennung/waste_separation_screen.dart';
import 'package:mamv2/features/News/news_screen.dart';
import 'package:mamv2/repositories/mock_database.dart';
import 'package:mamv2/shared/csv_filtered.dart';

class ContentSwitcher extends StatelessWidget {
  ContentSwitcher({
    super.key,
  });
  final MockDatabase mockDatabase = MockDatabase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: background,
            child: Column(children: [
              verticalBigSpacing,
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const InteractiveFilteredCalendar()));
                },
                child: const SwitcherContainer(
                  picturepath: "assets/icons/ContentSwitcher/Calendar.png",
                  text: "Kalender",
                ),
              ),
              verticalSpacing,
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NewsScreen()));
                },
                child: const SwitcherContainer(
                    picturepath: "assets/icons/ContentSwitcher/News.png",
                    text: "News"),
              ),
              verticalSpacing,
              const SwitcherContainer(
                  picturepath: "assets/icons/ContentSwitcher/Phone.png",
                  text: "Service"),
              verticalSpacing,
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Muelltrennung()));
                },
                child: const SwitcherContainer(
                    picturepath: "assets/icons/ContentSwitcher/Recycling.png",
                    text: "Recycle"),
              ),
              verticalSpacing,
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TrashListView()));
                },
                child: const SwitcherContainer(
                    picturepath: "assets/icons/ContentSwitcher/AbfallABC.png",
                    text: "Abfall ABC"),
              )
            ])));
  }
}
