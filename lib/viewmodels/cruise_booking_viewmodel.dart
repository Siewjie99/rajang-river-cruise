
import 'package:flutter/material.dart';
import '../models/cruise_destination.dart';

class CruiseBookingViewModel extends ChangeNotifier {

  final CruiseDestination destination =
  const CruiseDestination(
    name: 'Rajang River Express Cruise',
    location: 'Sibu, Sarawak, Malaysia',
    description:
    'Experience the beauty of the Rajang River in Sarawak. '
        'Enjoy scenic river views, local culture and a memorable '
        'journey along Malaysia’s longest river.',
  );

  DateTime? _visitDate;
  String _selectedPackage = 'Private River Cruise';
  bool _isDarkMode = false;
  int _ratingCount = 43;

  final List<String> cruisePackages = [
    'Private River Cruise',
    'Sunset Cruise',
    'Sunrise Cruise',
    'Rural Cruise',
    'SMI Park Cruise',
  ];

  DateTime? get visitDate => _visitDate;
  String get selectedPackage => _selectedPackage;
  bool get isDarkMode => _isDarkMode;
  int get ratingCount => _ratingCount;

  void setVisitDate(DateTime date) {
    _visitDate = date;
    notifyListeners();
  }

  void setSelectedPackage(String package) {
    _selectedPackage = package;
    notifyListeners();
  }

  void toggleDarkMode(bool value) {
    _isDarkMode = value;
    notifyListeners();
  }

  void addRating() {
    _ratingCount++;
    notifyListeners();
  }
}
