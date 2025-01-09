import 'package:flutter/material.dart';

class StylishCard extends StatelessWidget {
  final String phoneNumber;
  final String serviceName;
  final String address;
  final VoidCallback onTap;

  const StylishCard({
    super.key,
    required this.phoneNumber,
    required this.serviceName,
    required this.address,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 10, // Schatten
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Abgerundete Ecken
        ),
        child: Container(
          padding:
              const EdgeInsets.all(16), // Weniger Padding für kleinere Card
          constraints: const BoxConstraints(
            minHeight: 150,
            maxHeight: 150,
            maxWidth: 300,
          ),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blueAccent, Colors.greenAccent], // Farbverlauf
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12), // Abgerundete Ecken
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Service Name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    serviceName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    phoneNumber,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withValues(),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    address,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withValues(),
                    ),
                  ),
                ],
              ),
              // Icon oder Bild hinzufügen, falls gewünscht
              const Icon(
                Icons.phone_in_talk,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
