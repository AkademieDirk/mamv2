import 'package:flutter/material.dart';
import 'package:mamv2/config/colors/colors.dart';
import 'package:mamv2/repositories/csv_database.dart';
import 'package:mamv2/shared/basic_app_bar.dart';

class TrashListView extends StatefulWidget {
  const TrashListView({super.key});

  @override
  _TrashListViewState createState() => _TrashListViewState();
}

class _TrashListViewState extends State<TrashListView> {
  // Diese Variable speichert das Future mit den geladenen Daten
  Future<List<List<dynamic>>>? _futureData;

  @override
  void initState() {
    super.initState();
    // Rufe die Methode zum Laden der Daten auf, sobald die Seite initialisiert ist
    _futureData = CsvDatabase().getAllTrashInformation();
  }

  ThemeData mamTheme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        canColorImagePath: "assets/images/ABC.png",
        textcolor: Colors.white,
        backgroundColor: appbarcolor,
        title: "Abfall ABC",
      ),
      body: FutureBuilder<List<List<dynamic>>>(
        future: _futureData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text('Fehler beim Laden der Daten'));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Keine Daten gefunden.'));
          }

          // Wenn Daten vorhanden sind, bauen wir die ListView
          List<List<dynamic>> data = snapshot.data!;

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              // Ignoriere die erste Zeile (Header-Zeile)
              if (index == 0) {
                return Container(); // Leeres Container für den Header
              }

              List<dynamic> row = data[index];

              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  //title: Text('Zeile $index'),
                  subtitle: Text(
                    row.join(", "),
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: TrashListView(),
  ));
}
