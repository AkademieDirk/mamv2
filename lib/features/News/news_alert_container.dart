
// class NewsAlertContainer extends StatelessWidget {
//   const NewsAlertContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             alertDialogNews(context);
//           },
//           child: const Text("Dialog anzeigen"),
//         ),
//       ),
//     );
//   }

//   Future<dynamic> alertDialogNews(BuildContext context) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text("Titel"),
//           content: const Column(
//             children: [
//               Text("Überschrift"),
//               Text("Nachricht"),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(); // Schließt den Dialog
//               },
//               child: const Text("ActionsText"),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
