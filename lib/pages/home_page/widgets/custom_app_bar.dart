import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';

import '../../../styles/app_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Image(
              width: 28,
              height: 28,
              image: AssetImage(AppIcons.icSearch),
            ),
          ),
          const Row(
            children: [
              TabPageSelectorIndicator(
                backgroundColor: AppColors.black,
                borderColor: AppColors.black,
                size: 8,
              ),
              TabPageSelectorIndicator(
                backgroundColor: AppColors.black,
                borderColor: AppColors.black,
                size: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: SizedBox(
                    width: 34,
                    height: 8,
                  ),
                ),
              ),
              TabPageSelectorIndicator(
                backgroundColor: AppColors.black,
                borderColor: AppColors.black,
                size: 8,
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Image(
              width: 22,
              height: 22,
              image: AssetImage(AppIcons.icMenu),
            ),
          ),
        ],
      ),
    );
  }
}
