
import 'package:flutter/material.dart';
import '../../viewmodels/cruise_booking_viewmodel.dart';

class PreferenceSectionWidget extends StatelessWidget {
  final CruiseBookingViewModel viewModel;

  const PreferenceSectionWidget({
    super.key,
    required this.viewModel,
  });

  Future<void> chooseDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: viewModel.visitDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 365),
      ),
    );

    if (picked != null) {
      viewModel.setVisitDate(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final date = viewModel.visitDate;

    final dateText = date == null
        ? 'Select your visit date'
        : '${date.day}/${date.month}/${date.year}';

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trip Preferences',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 12),

            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(
                Icons.calendar_month,
                color: Colors.teal,
              ),
              title: const Text('Visit Date'),
              subtitle: Text(dateText),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => chooseDate(context),
            ),

            const SizedBox(height: 12),

            DropdownButtonFormField<String>(
              value: viewModel.selectedPackage,
              decoration: const InputDecoration(
                labelText: 'Cruise Package',
                border: OutlineInputBorder(),
              ),
              items: viewModel.cruisePackages.map((package) {
                return DropdownMenuItem<String>(
                  value: package,
                  child: Text(package),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  viewModel.setSelectedPackage(value);
                }
              },
            ),

            const SizedBox(height: 12),

            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Dark Mode'),
              subtitle: const Text('Change app appearance'),
              value: viewModel.isDarkMode,
              onChanged: viewModel.toggleDarkMode,
            ),
          ],
        ),
      ),
    );
  }
}
