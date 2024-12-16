import 'package:flutter/material.dart';

class AppUser {
  String userName;
  String password;

  AppUser({required this.userName, required this.password});

  @override
  String toString() {
    return "($userName, ********)";
  }
}

void zeigeMaterialBanner(BuildContext context, String nachricht) {
  ScaffoldMessenger.of(context).showMaterialBanner(
    MaterialBanner(
      content: Text(nachricht),
      leading: const Icon(Icons.info, color: Colors.blue),
      backgroundColor: Colors.grey[200],
      actions: [
        TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
          },
          child: const Text('SCHLIESSEN'),
        ),
      ],
    ),
  );
}
