import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_new/constants/constands.dart';
import 'package:netflix_new/reUsableWidgets/titleWidgets.dart';

class ScreenSearch extends StatelessWidget {
   const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(top: 10,left: 15,right: 10),child: AllSection()),
      ),
    );
  }
}


class AllSection extends StatelessWidget {
  AllSection({Key? key}) : super(key: key);
  final images = [
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/jKFOQ5LNQuIWGLdB2WhVlSUcS6F.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CupertinoSearchTextField(
          padding: EdgeInsets.all(
            10,
          ),
        ),
        kHeight20,
        const TitleWidgets(title: 'Movies & Tv', fontSize: 23),
        kHeight20,
        Expanded(
          child: GridView.count(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            childAspectRatio: 1 / 2,
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(
              3,
                  (index) => Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(images[index])),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
