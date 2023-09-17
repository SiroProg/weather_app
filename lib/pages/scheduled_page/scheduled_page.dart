import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/daily_weather.dart';
import 'widgets/tomorow_info_page.dart';

class ScheduledPage extends StatelessWidget {
  const ScheduledPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.appBGGradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ListView(
            children: const [
              CustomAppBar(),
              TomorowInfoPage(),
              WeeksInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
