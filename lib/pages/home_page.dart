import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/components/akses_cepat.dart';
import 'package:gojek/components/goclub.dart';
import 'package:gojek/components/gopay_later.dart';
import 'package:gojek/components/header.dart';
import 'package:gojek/components/search.dart';
import 'package:gojek/datas/icons.dart';
import 'package:gojek/datas/news.dart';
import 'package:gojek/theme.dart';

import '../components/gopay.dart';
import '../components/menu_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // search
            Search(),
            // gopay
            Gopay(),
            // menu icon
            MenuIcon(),
            // goclub
            GoClub(),
            // akses cepat
            AksesCepat(),
            // gopaylatter
            GopayLater(),
            const SizedBox(
              height: 24,
            ),

            // news
            ...news.map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: dark4)),
                  child: Column(
                    children: [
                      Image.asset('assets/images/${e.image}'),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.title,
                              style: bold16.copyWith(color: dark1),
                            ),
                            Text(
                              e.description,
                              style: regular14.copyWith(color: dark2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
