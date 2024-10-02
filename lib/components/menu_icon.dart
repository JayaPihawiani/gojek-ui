import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/theme.dart';

import '../datas/icons.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 27, right: 27, top: 32),
      child: SizedBox(
        height: 157,
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          children: [
            ...menuIcons.map(
              (e) => Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: e.icon == 'goclub' ? Colors.white : e.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/${e.icon}.svg',
                      color: e.icon == 'goclub'
                          ? e.color
                          : e.icon == 'other'
                              ? dark2
                              : Colors.white,
                      width: 24,
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    e.title,
                    style: regular12_5.copyWith(color: dark2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
