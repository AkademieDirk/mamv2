// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mamv2/config/themes/themes.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({
    super.key,
    required GlobalKey<FormState> registrationformkey,
  }) : _registrationformkey = registrationformkey;

  final GlobalKey<FormState> _registrationformkey;
  //Validator Form Field One
  String? validateMailInput(String? value) {
    if (value == null || value.isEmpty) {
      return "Bitte gib was in das Feld ein";
    }
    if (!value.contains("@")) {
      return "Muss ein @ beinhalten";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _registrationformkey,
        child: Column(
          children: [
            verticalBigSpacing,
            Center(
              child: SizedBox(
                width: 300,
                height: 50,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Bitte etwas eingeben";
                    }

                    if (value.length > 20) {
                      return "Bitte kürzeren Vornamen eingeben";
                    }
                    return null;
                  },
                  style: Theme.of(context).textTheme.bodySmall,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: Text(
                        "Vorname",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      hintText: "Bitte Vornamen eingeben",
                      hintStyle: Theme.of(context).textTheme.bodySmall),
                ),
              ),
            ),
            verticalSpacing,
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                validator: (value) {
                  if (value!.contains("@")) {
                    return "Das @ Zeichen ist nicht erlaubt";
                  }
                  return null;
                },
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "Nachname",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    hintText: "Bitte Nachname eingeben"),
              ),
            ),
            verticalSpacing,
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "Straße",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    hintText: "bitte Ihre Straße eingeben"),
              ),
            ),
            verticalSpacing,
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                validator: (value) {
                  if (!RegExp(r'^[0-9]+$').hasMatch(value!)) {
                    return "Bitte nur Zahlen eingeben";
                  }
                  return null;
                },
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "Hausnummer",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    hintText: "Bitte Ihre Hausnummer eingeben"),
              ),
            ),
            verticalSpacing,
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "Hausnummer Zusatz",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    hintText: "Bitte Hausnummer Zusatz eingeben"),
              ),
            ),
            verticalSpacing,
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "Postleitzahl",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    hintText: "Bitte Postleitzahl eingeben"),
              ),
            ),
            verticalSpacing,
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text("Ort",
                        style: Theme.of(context).textTheme.bodySmall),
                    hintText: "Bitte Ort eingeben"),
              ),
            ),
            verticalSpacing,
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                validator: validateMailInput,
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(
                      "E-Mail",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    hintText: "Bitte E-Mailadresse eingeben"),
              ),
            ),
            verticalSpacing,
            OutlinedButton(
                onPressed: () {
                  if (_registrationformkey.currentState!.validate()) {
                    print("Navigation");
                    print("Daten in Datenbank speichern");
                  } else {
                    print("Fehler im Form");
                  }
                },
                child: Text("Registrieren",
                    style: Theme.of(context).textTheme.bodySmall))
          ],
        ),
      ),
    );
  }
}
