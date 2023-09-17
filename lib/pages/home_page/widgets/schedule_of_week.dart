import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';

import '../../scheduled_page/scheduled_page.dart';

class ScheduleOfWeek extends StatelessWidget {
  const ScheduleOfWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
                "Today",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Tomorrow",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 16,
                  color: AppColors.scheduleTextColor,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScheduledPage(),
                ),
              );
            },
            child: const Row(
              children: [
                Text(
                  "Next 7 Days",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 16,
                    color: AppColors.scheduleTextColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: AppColors.scheduleTextColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
