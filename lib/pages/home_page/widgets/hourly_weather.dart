import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';

class HourlyWeather extends StatelessWidget {
  const HourlyWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: SizedBox(
                height: 5,
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.5),
                      child: SizedBox(
                        width: double.infinity,
                        height: 1,
                        child: ColoredBox(color: AppColors.scheduleTextColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                      ),
                      child: SizedBox(
                        width: 20,
                        height: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 10,
                  ),
                  itemCount: 15,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 55,
                      height: 150,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.white30,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "8:00",
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            Image(
                              image: AssetImage(
                                AppIcons.icSun,
                              ),
                              width: 24,
                              height: 24,
                            ),
                            Text(
                              "20°C",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
