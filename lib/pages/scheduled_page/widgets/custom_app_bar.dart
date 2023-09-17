import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back,
            color: AppColors.black,
            size: 25,
          ),
          Text(
            "Next 7 Days",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
