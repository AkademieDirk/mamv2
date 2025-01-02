import 'package:flutter/material.dart';
import 'package:mamv2/config/colors/colors.dart';
import 'package:mamv2/config/themes/themes.dart';
import 'package:mamv2/features/service_numbers/modells/service_list.dart';
import 'package:mamv2/shared/basic_app_bar.dart';

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
              return ListTile(
                title: Text(service['service']!),
                subtitle: Text(service['phone']!),
              );
            },
          ),
        ));
  }
}
