
import 'package:flutter/material.dart';
import '../../viewmodels/cruise_booking_viewmodel.dart';

class TitleSectionWidget extends StatelessWidget {
  final CruiseBookingViewModel viewModel;

  const TitleSectionWidget({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            viewModel.destination.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.teal),
              Expanded(
                child: Text(viewModel.destination.location),
              ),
              IconButton(
                onPressed: viewModel.addRating,
                icon: const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              Text('${viewModel.ratingCount}'),
            ],
          ),
        ],
      ),
    );
  }
}
