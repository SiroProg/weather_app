import 'package:flutter/material.dart';
import 'package:weather_app/pages/controller/main_controller.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/utils/time_extensions.dart';

class LocationView extends StatelessWidget {
  final MainController controller;
  const LocationView({required this.controller, super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.data?.resolvedAddress ?? "",
              style: const TextStyle(
                fontSize: 39,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              DateTime.now().weekMounthDay,
              style: const TextStyle(
                fontSize: 15,
                color: AppColors.grayText,
              ),
            ),
          ],
        ),
      );
}
