import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/abfall_abc/screens/trash_list_view.dart';
import 'package:mamv2/features/abfall_abc/widgets/switcher_container.dart';
import 'package:mamv2/features/Kalender/csv_filtered.dart';
import 'package:mamv2/features/Muelltrennung/Screens/waste_separation_screen.dart';
import 'package:mamv2/features/News/Screens/news_screen.dart';
import 'package:mamv2/features/login_registration/repositorys/user_auth_repository.dart';
import 'package:mamv2/features/login_registration/screens/login_screen.dart';
import 'package:mamv2/features/service_numbers/screens/service_list_screen.dart';
import 'package:provider/provider.dart';

class ContentSwitcher extends StatelessWidget {
  const ContentSwitcher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<UserAuthRepository>().logoutUser();
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginScreen()));
            ScaffoldMessenger.of(context).showSnackBar((const SnackBar(
              content: Text(" Erfolgreich ausgeloggt"),
              duration: Duration(seconds: 1),
              backgroundColor: Colors.green,
            )));
          },
          child: const Icon(Icons.logout),
        ),
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
                  //InteractiveFilteredCalendar()));
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ServiceListScreen()));
                },
                child: const SwitcherContainer(
                    picturepath: "assets/icons/ContentSwitcher/Phone.png",
                    text: "Service"),
              ),
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
                          builder: (context) => const ListViewTrashAbcNew()));
                },
                child: const SwitcherContainer(
                    picturepath: "assets/icons/ContentSwitcher/AbfallABC.png",
                    text: "Abfall ABC"),
              )
            ])));
  }
}
