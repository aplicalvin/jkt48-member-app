import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class PointsMenu extends StatelessWidget {
  final HeroIcons iconku;
  final String label;

  PointsMenu({required this.iconku, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: HeroIcon(
              iconku,
              size: 24,
              color: Color(0xFFFFEBEB),
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: Color(0xFFFFEBEB),
            ),
          )
        ],
      ),
    );
  }
}
