import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_new/constants/constands.dart';
import 'package:netflix_new/reUsableWidgets/titleWidgets.dart';

class ScreenSearchSecond extends StatelessWidget {
  ScreenSearchSecond({Key? key}) : super(key: key);
  final images = [
    "https://www.themoviedb.org/t/p/w250_and_h141_face/jHKNqz0LjM2dOUv5XDPmcSoYPEW.jpg",
    "https://www.themoviedb.org/t/p/w250_and_h141_face/o8u0NyEigCEaZHBdCYTRfXR8U4i.jpg",
    "https://www.themoviedb.org/t/p/w250_and_h141_face/2gKX53lskaCYk9ycXmaDJKqWiy.jpg",
    "https://www.themoviedb.org/t/p/w250_and_h141_face/ecKQlAEG95k62SMGhvX83oEqANK.jpg",
    "https://www.themoviedb.org/t/p/w250_and_h141_face/uLhWh1pggjIiQ1DpL0DvaIgERQR.jpg",
    "https://www.themoviedb.org/t/p/w250_and_h141_face/fgsHxz21B27hOOqQBiw9L6yWcM7.jpg",
    "https://www.themoviedb.org/t/p/w250_and_h141_face/vpxjf8vGsOGRrW1aBYLv4RcSwmw.jpg",
    "https://www.themoviedb.org/t/p/w250_and_h141_face/9p5BuzUNcvCltQAIiDLILEsH0dk.jpg"
  ];

  final movieName = [
    "The Meg",
    "Annabelle Creation",
    "George and manu",
    "Annabelle",
    "The curse of Land",
    "Dog's Special Mission",
    "The Nun",
    "The Conjuring"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CupertinoSearchTextField(
              padding: EdgeInsets.all(
                10,
              ),
            ),
            kHeight20,
            const TitleWidgets(title: 'Top Searches', fontSize: 23),
            kHeight20,
            Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 10),
                             height: 85,
                             width: 140,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.green,
                                 image: DecorationImage(
                                     image: NetworkImage(images[index]),
                                     fit: BoxFit.cover)),
                           ),
                           kWidth10,
                           Text(movieName[index],style: const TextStyle(
                               fontWeight: FontWeight.bold,fontSize: 18
                           ),),
                         ],
                       ),
                        const Icon(CupertinoIcons.play_circle),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => kHeight10,
                  itemCount: images.length),
            )
          ],
        ),
      ),
    );
  }
}
