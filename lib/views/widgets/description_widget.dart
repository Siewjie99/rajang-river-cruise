
import 'package:flutter/material.dart';
import '../../viewmodels/cruise_booking_viewmodel.dart';

class DescriptionWidget extends StatelessWidget {
  final CruiseBookingViewModel viewModel;

  const DescriptionWidget({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About the Destination',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              Text(viewModel.destination.description),
            ],
          ),
        ),
      ),
    );
  }
}
