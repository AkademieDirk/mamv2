String? passwordValidator(String? value) {
  if (value == null) return "Das Passwort darf nicht leer sein";
  if (value.length < 8) return "Passwort sollte mindestens 8 Zeichen lang sein";

  return null;
}
