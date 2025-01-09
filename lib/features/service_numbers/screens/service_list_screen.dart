import 'package:flutter/material.dart';
import 'package:mamv2/config/colors/colors.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/service_numbers/modells/service_list.dart';
import 'package:mamv2/features/service_numbers/widgets/stylish_card.dart';
import 'package:mamv2/shared/basic_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceListScreen extends StatelessWidget {
  const ServiceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Damit ich mit der Klasse arfbeiten kann hole ich mir hier eine Instanz
    final serviceList = ServiceList().getServiceList();

    return Scaffold(
      appBar: const BasicAppBar(
        title: 'Service Stadt Marl',
        backgroundColor: appbarcolor,
        canColorImagePath: "assets/images/App-Basics/logoMarl.png",
      ),
      body: Container(
        width: double.infinity,
        decoration: background,
        child: ListView.builder(
          itemCount: serviceList.length,
          itemBuilder: (context, index) {
            final service = serviceList[index];
            final serviceName = service["service"] ?? " kein Name";
            final address = service["address"] ?? "keine Adresse bekannt";

            final phoneNumber = service["phone"] ?? "keine Nummer";
            return StylishCard(
                phoneNumber: phoneNumber,
                serviceName: serviceName,
                address: address,
                onTap: () => _makePhoneCall(phoneNumber));
          },
        ),
      ),
    );
  }
}

// Funktion, um den Anruf zu starten
void _makePhoneCall(String phoneNumber) async {
  final Uri phoneUrl =
      Uri.parse('tel:$phoneNumber'); // Telefonnummer in URI umwandeln
  if (await canLaunchUrl(phoneUrl)) {
    await launchUrl(phoneUrl); // Starte den Anruf
  } else {
    print('Konnte die Telefonnummer nicht öffnen.');
  }
}
