import 'package:flutter/material.dart';
import 'package:mamv2/config/colors/colors.dart';

import 'package:mamv2/repositories/mock_database.dart';

class ListViewTrash extends StatelessWidget {
  const ListViewTrash({
    super.key,
    required this.mockDatabase,
  });

  final MockDatabase mockDatabase;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockDatabase.getTrashList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          );
        } else {
          return ListView.separated(
            itemCount: mockDatabase.trashList.length,
            itemBuilder: (context, index) {
              Color backgroundColor =
                  index % 2 == 0 ? listtilestraight : listtileodd;
              return Container(
                color: backgroundColor,
                child: ListTile(
                  selected: false,
                  title: Center(
                    child: Row(
                      children: [
                        Text(
                          mockDatabase.trashList[index]["Abfallart"]!,
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            mockDatabase.trashList[index]["Entsorgung"]!,
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: dividercolor,
                thickness: 0.5,
              );
            },
          );
        }
      },
    );
  }
}
