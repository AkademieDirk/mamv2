// Inspired by https://stackoverflow.com/a/50663835

// Der Code ist aus der Batch App wird noch mit anderer Regexp oder als extension
String? emailValidator(String? value) {
  if (value == null) return "Bitte Emailadresse eingeben";
  if (RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value)) {
    return "Danke";
  } else {
    return "Die Mailadresse scheint nicht zu stimmen";
  }
}
