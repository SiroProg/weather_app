import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_icons.dart';

import '../../../styles/app_colors.dart';

class TomorowInfoPage extends StatelessWidget {
  const TomorowInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 28,
        right: 28,
        top: 20,
        bottom: 50,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColors.white30,
            borderRadius: BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tommorow",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "22°",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image(
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            AppIcons.icCloudlySun,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: const Image(
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            AppIcons.icUmbrella,
                          ),
                        ),
                      ),
                      const Text(
                        "50 %",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: const Image(
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            AppIcons.icWind,
                          ),
                        ),
                      ),
                      const Text(
                        "15 km/h",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 11),
                        child: Transform.scale(
                          scale: 1.2,
                          child: const Image(
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AppIcons.icHumdity,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 80, left: 20),
                        child: Text(
                          "1cm",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
