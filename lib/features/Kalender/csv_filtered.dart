// // ignore_for_file: unused_field

// import 'package:csv/csv.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:mamv2/config/colors/colors.dart';
// import 'package:mamv2/config/themes/themes.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     //! wie bekomme ich hier die matrial App raus
//     return const MaterialApp(
//       home: InteractiveFilteredCalendar(),
//     );
//   }
// }

// class InteractiveFilteredCalendar extends StatefulWidget {
//   const InteractiveFilteredCalendar({super.key});

//   @override
//   InteractiveFilteredCalendarState createState() =>
//       InteractiveFilteredCalendarState();
// }

// class InteractiveFilteredCalendarState
//     extends State<InteractiveFilteredCalendar> {
//   List<List<dynamic>> _data = [];
//   List<List<dynamic>> _filteredData = []; // Für die gefilterten Daten
//   String _searchQuery = ""; // Für den Suchtext

//   // Laden und Filtern der CSV-Daten
//   void _loadCSV() async {
//     try {
//       final rawData = await rootBundle.loadString("assets/sheets/streets.csv");
//       List<List<dynamic>> listData =
//           const CsvToListConverter().convert(rawData, fieldDelimiter: ";");

//       // Nur Zeilen mit mindestens 5 Spalten speichern
//       setState(() {
//         _data = listData.where((row) => row.length >= 5).toList();
//         _filteredData = List.from(_data); // Anfangs alle Daten anzeigen
//       });
//     } catch (e) {
//       setState(() {
//         _data = [];
//         _filteredData = [];
//       });
//     }
//   }

//   // Methode zum Filtern der Daten basierend auf der Eingabe
//   void _filterData(String query) {
//     setState(() {
//       _searchQuery = query;
//       _filteredData = _data.where((row) {
//         // Filtert die Daten, indem alle Spalten verglichen werden
//         return row.any((field) =>
//             field.toString().toLowerCase().contains(query.toLowerCase()));
//       }).toList();
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _loadCSV(); // CSV-Daten beim Start laden
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: appbarcolor,
//           title: const Text("Wann muss die Tonne raus?"),
//         ),
//         body: Container(
//           width: double.infinity,
//           decoration: background,
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   onChanged: _filterData, // Filtert die Daten bei jeder Eingabe
//                   decoration: const InputDecoration(
//                     labelText: "Suche",
//                     border: OutlineInputBorder(),
//                     prefixIcon: Icon(Icons.search),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: _filteredData.isEmpty
//                     ? const Center(child: CircularProgressIndicator())
//                     : InteractiveViewer(
//                         constrained: false,
//                         child: DataTable(
//                           columnSpacing: 20,
//                           columns: const [
//                             DataColumn(label: Text('Straße')),
//                             DataColumn(label: Text('Restabfall')),
//                             DataColumn(label: Text('Bio')),
//                             DataColumn(label: Text('Wertstoff')),
//                             DataColumn(label: Text('Papier')),
//                           ],
//                           rows: _filteredData.map((row) {
//                             return DataRow(cells: [
//                               DataCell(Text(row[0].toString())), // Straße
//                               DataCell(Text(row[1].toString())), // Restabfall
//                               DataCell(Text(row[2].toString())), // Bio
//                               DataCell(Text(row[3].toString())), // Wertstoff
//                               DataCell(Text(row[4].toString())), // Papier
//                             ]);
//                           }).toList(),
//                         ),
//                       ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mamv2/config/colors/colors.dart';
import 'package:mamv2/config/themes/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InteractiveFilteredCalendar(),
    );
  }
}

class InteractiveFilteredCalendar extends StatefulWidget {
  const InteractiveFilteredCalendar({super.key});

  @override
  InteractiveFilteredCalendarState createState() =>
      InteractiveFilteredCalendarState();
}

class InteractiveFilteredCalendarState
    extends State<InteractiveFilteredCalendar> {
  List<List<dynamic>> _data = [];
  List<List<dynamic>> _filteredData = [];
  String _searchQuery = "";
  // Laden und Filtern der CSV-Daten
  void _loadCSV() async {
    try {
      final rawData = await rootBundle.loadString("assets/sheets/streets.csv");
      List<List<dynamic>> listData =
          const CsvToListConverter().convert(rawData, fieldDelimiter: ";");

      // Nur Zeilen mit mindestens 5 Spalten speichern
      setState(() {
        _data = listData.where((row) => row.length >= 5).toList();
        _filteredData = List.from(_data); // **Anfangs alle Daten anzeigen**
      });
    } catch (e) {
      setState(() {
        _data = [];
        _filteredData = [];
      });
    }
  }

  // Methode zum Filtern der Daten basierend auf der Eingabe
  void _filterData(String query) {
    setState(() {
      _searchQuery = query;
      _filteredData = _data.where((row) {
        // Filtert die Daten, indem alle Spalten verglichen werden
        return row.any((field) =>
            field.toString().toLowerCase().contains(query.toLowerCase()));
      }).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _loadCSV(); // CSV-Daten beim Start laden
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appbarcolor,
          title: const Text("Wann muss die Tonne raus?"),
        ),
        body: Container(
          width: double.infinity,
          decoration: background,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: _filterData,
                  decoration: const InputDecoration(
                    labelText: "Suche",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Expanded(
                child: _filteredData.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: _filteredData.length,
                        itemBuilder: (context, index) {
                          final row = _filteredData[index];

                          return Card(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            elevation: 10, //Schatten

                            child: Container(
                              padding: const EdgeInsets.all(
                                  16), // Weniger Padding für kleinere Card
                              constraints: const BoxConstraints(
                                minHeight: 100,
                                maxHeight: 150,
                                maxWidth: 300,
                              ),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Colors.blueAccent,
                                      Colors.greenAccent
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      " ${row[0]}",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight
                                            .bold, // **Fett und größer**
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Restabfall: ${row[1]}",
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(),
                                        Text("Bio: ${row[2]}")
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Wertstoff: ${row[3]}"),
                                        Text("Papier: ${row[4]}"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ));
  }
}
