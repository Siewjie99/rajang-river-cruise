
import 'package:flutter/material.dart';

import 'viewmodels/cruise_booking_viewmodel.dart';
import 'views/cruise_booking_screen.dart';

void main() {
  runApp(const RajangRiverCruiseApp());
}

class RajangRiverCruiseApp extends StatefulWidget {
  const RajangRiverCruiseApp({super.key});

  @override
  State<RajangRiverCruiseApp> createState() =>
      _RajangRiverCruiseAppState();
}

class _RajangRiverCruiseAppState
    extends State<RajangRiverCruiseApp> {

  final CruiseBookingViewModel viewModel =
  CruiseBookingViewModel();

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: viewModel,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          title: 'Rajang River Cruise',

          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
            ),
          ),

          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: Brightness.dark,
            ),
          ),

          themeMode: viewModel.isDarkMode
              ? ThemeMode.dark
              : ThemeMode.light,

          home: CruiseBookingScreen(
            viewModel: viewModel,
          ),
        );
      },
    );
  }
}
