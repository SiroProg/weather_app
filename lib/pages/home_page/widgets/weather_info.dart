import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';
import '../../../utils/list_extensions.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          const DetailItem(
            icon: AppIcons.icUmbrella,
            info: "RainFall",
            action: "3cm",
          ),
          const DetailItem(
            icon: AppIcons.icWind,
            info: "Wind",
            action: "19km/h",
          ),
          const DetailItem(
            icon: "assets/icons/ic_hum.png",
            info: "Humidity",
            action: "64%",
            a: true,
            top: 0,
            buttom: 5,
            left: 5,
          ),
        ].addBetween(
          const SizedBox(
            height: 8,
          ),
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  const DetailItem({
    required this.icon,
    required this.info,
    required this.action,
    this.a,
    this.top = 8,
    this.buttom = 0,
    this.left = 0,
    super.key,
  });

  final String icon;
  final String info;
  final String action;
  final bool? a;
  final double top;
  final double left;
  final double buttom;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.white50,
          border: Border.all(
            color: AppColors.white50,
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: top,
                    bottom: buttom,
                    left: left,
                  ),
                  child: Image(
                    image: AssetImage(icon),
                    width: a == true ? 70 : 80,
                    height: a == true ? 70 : 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  info,
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(right: 20), child: Text(action)),
          ],
        ),
      ),
    );
  }
}
