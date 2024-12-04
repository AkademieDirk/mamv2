import 'package:flutter/material.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/Abfall_ABC/screens/list_view_trash.dart';
import 'package:mamv2/repositories/mock_database.dart';
import 'package:mamv2/shared/basic_app_bar.dart';

class TrashAbcScreen extends StatelessWidget {
  TrashAbcScreen({
    super.key,
  });
  final MockDatabase mockDatabase = MockDatabase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        title: "Abfall ABC",
        textcolor: Colors.black,
        canColorImagePath:
            'assets/images/TrashCanColor/Fragezeichen_transparent.png',
      ),
      body: Container(
        decoration: background,
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: ListViewTrash(mockDatabase: mockDatabase),
        ),
      ),
    );
  }
}
