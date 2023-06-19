import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_new/constants/constands.dart';
import 'package:netflix_new/reUsableWidgets/titleWidgets.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                const TopSection(title: 'Downloads',),
                CenterSection(),
                const BottomSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
             Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const Spacer(),
            const Icon(Icons.cast),
            kWidth15,
            Image.network(
              "https://cdn.onlinewebfonts.com/svg/img_52612.png",
              height: 25,
              width: 25,
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ],
        ),
        kHeight15,
        Row(
          children: const [
            Icon(
              Icons.settings,
              size: 26,
            ),
            kWidth6,
            Text(
              'Smart Downloads',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
        kHeight25,
        const TitleWidgets(title: 'Introducing Downloads for you', fontSize: 25),
        kHeight20,
        const Text(
          textAlign: TextAlign.center,
          "We'll download a personalized selection of\nmovies and shows for you,so there's\nalways something to watch on your\n device,",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kHeight10,
      ],
    );
  }
}

class CenterSection extends StatelessWidget {
  CenterSection({Key? key}) : super(key: key);
  final images = [
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/jKFOQ5LNQuIWGLdB2WhVlSUcS6F.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg"  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 140,
            ),
            Transform.rotate(
              angle: 20 * pi / 180,
              child: Container(
                margin: const EdgeInsets.only(left: 150,bottom: 15),
                height: 200,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(images[0]),
                        fit: BoxFit.cover)),
              ),
            ),
            Transform.rotate(
              angle: -20*pi/180,
              child: Container(
                margin: const EdgeInsets.only(right: 150,bottom: 15),
                height: 200,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(images[1]), fit: BoxFit.cover)),
              ),
            ),
            Container(
              height: 220,
              width: 140,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(images[2]), fit: BoxFit.cover)),
            ),
          ],
        ),
        kHeight35,
      ],
    );
  }
}


class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 120, vertical: 16)),
                backgroundColor:
                const MaterialStatePropertyAll(Colors.blue)),
            onPressed: () {},
            child: const Text(
              "Set Up",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
        kHeight15,
        ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 20, vertical: 16)),
                backgroundColor:
                const MaterialStatePropertyAll(Colors.white)),
            onPressed: () {},
            child: const Text(
              "See What you can download",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}


