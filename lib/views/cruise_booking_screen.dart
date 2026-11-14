
import 'package:flutter/material.dart';

import '../viewmodels/cruise_booking_viewmodel.dart';
import 'widgets/header_image_widget.dart';
import 'widgets/title_section_widget.dart';
import 'widgets/action_bar_widget.dart';
import 'widgets/description_widget.dart';
import 'widgets/booking_controls_widget.dart';

class CruiseBookingScreen extends StatelessWidget {
  final CruiseBookingViewModel viewModel;

  const CruiseBookingScreen({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sibu River Cruise & Heritage'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.landscape) {
              return Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: ListView(
                      children: [
                        const HeaderImageWidget(),
                        TitleSectionWidget(viewModel: viewModel),
                        DescriptionWidget(viewModel: viewModel),
                      ],
                    ),
                  ),
                  const VerticalDivider(width: 1),
                  Expanded(
                    flex: 4,
                    child: ListView(
                      children: [
                        const ActionBarWidget(),
                        PreferenceSectionWidget(
                          viewModel: viewModel,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }

            return ListView(
              children: [
                const HeaderImageWidget(),
                TitleSectionWidget(viewModel: viewModel),
                const ActionBarWidget(),
                DescriptionWidget(viewModel: viewModel),
                PreferenceSectionWidget(
                  viewModel: viewModel,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
