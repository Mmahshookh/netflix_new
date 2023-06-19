import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_new/constants/constands.dart';
import 'package:netflix_new/reUsableWidgets/titleWidgets.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network('https://1000logos.net/wp-content/uploads/2017/05/Netflix-Logo-2006.png',height: 40,width: 40,),
                    Row(
                      children: [
                        const Icon(Icons.cast),
                        kWidth10,
                        Image.network(
                          "https://cdn.onlinewebfonts.com/svg/img_52612.png",
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 600,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Tv Shows',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Movies',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Categories',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 2,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [Icon(Icons.add), Text('My List')],
                          ),
                          ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              onPressed: () {},
                              icon: Icon(Icons.play_arrow),
                              label: Text("Play")),
                          Column(
                            children: const [
                              Icon(Icons.info_outline),
                              Text('My List')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                kHeight10,
                const TitleWidgets(
                    title: 'Released in the past year', fontSize: 22),
                kHeight10,
                LimitedBox(
                  maxHeight: 200,
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children:
                          List.generate(10, (index) => const MainCardImage())),
                ),
                const TitleWidgets(
                    title: 'Released in the past year', fontSize: 22),
                kHeight10,
                LimitedBox(
                  maxHeight: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(10, (index) => const MainCardImage()),
                  ),
                ),
                const TitleWidgets(
                    title: 'Top 10 Tv shows in india Today', fontSize: 22),
                kHeight10,
                LimitedBox(
                  maxHeight: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        10,
                        (index) => NumberCard(
                              index: index + 1,
                            )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainCardImage extends StatelessWidget {
  const MainCardImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 100,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/78W8tIM3PgIO6OIMfugi6p1GHNT.jpg"),
              fit: BoxFit.cover)),
    );
  }
}

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          child: Container(
            margin: const EdgeInsets.only(left: 30),
            height: 100,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/78W8tIM3PgIO6OIMfugi6p1GHNT.jpg"),
                    fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          left: 8,
          bottom: -19,
          child: BorderedText(
            strokeWidth: 4,
            strokeColor: Colors.white,
            child: Text(
              "$index",
              style: const TextStyle(
                fontSize: 100,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
