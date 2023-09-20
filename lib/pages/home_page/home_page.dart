import 'package:flutter/material.dart';
import 'package:weather_app/pages/controller/main_controller.dart';
import 'package:weather_app/pages/home_page/widgets/custom_app_bar.dart';

import '../../styles/app_colors.dart';
import 'widgets/hourly_weather.dart';
import 'widgets/location_view.dart';
import 'widgets/schedule_of_week.dart';
import 'widgets/weather_celsius.dart';
import 'widgets/weather_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MainController controller;
  _HomePageState() {
    controller = MainController(setState);
    controller.getApiData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.appBGGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              const CustomAppBar(),
              LocationView(controller: controller),
              const WeatherCelsius(),
              const WeatherInfo(),
              const ScheduleOfWeek(),
              const HourlyWeather(),
            ],
          ),
        ),
      ),
    );
  }
}
