import 'package:flutter/material.dart';
import 'recycling_repository.dart';

class RecyclingProvider extends ChangeNotifier {
  final RecyclingRepository _repository = RecyclingRepository();

  // Zugriff auf die Recycling-Texte
  List<String> get yellowRecyclingText => _repository.getYellowRecyclingText();
  List<String> get brownRecyclingText => _repository.getBrownRecyclingText();
  List<String> get blackRecyclingText => _repository.getBlackRecyclingText();
  List<String> get blueRecyclingText => _repository.getBlueRecyclingText();
}
