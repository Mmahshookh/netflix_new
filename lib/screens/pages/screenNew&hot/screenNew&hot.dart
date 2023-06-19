import 'package:flutter/material.dart';
import 'package:netflix_new/constants/constands.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: const Text(
              "New And Hot",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            actions: [
              const Icon(Icons.cast),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://cdn.onlinewebfonts.com/svg/img_52612.png",
                            ),
                            fit: BoxFit.cover),
                        color: Colors.white),
                  ),
                ],
              ),
              kWidth15,
            ],
            bottom: const TabBar(
                padding: EdgeInsets.symmetric(horizontal: 20),
                labelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                tabs: [
                  Tab(
                    text: '🍿 Coming soon',
                  ),
                  Tab(
                    text: '👁️👁️ Everyone"s Watching',
                  ),
                ]),
          ),
        ),
        body: TabBarView(children: [
          _buildComingSoon(context),
          _everyOnesWatching(context),
        ]),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Row(
          children: [
            SizedBox(
              height: 450,
              width: 50,
              child: Column(
                children: const [
                  Text(
                    "Feb",
                    style: TextStyle(color: Colors.white60, fontSize: 18),
                  ),
                  Text(
                    "11",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 370,
              width: MediaQuery.of(context).size.width - 75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width - 75,
                    child: Image.network(
                      "https://www.themoviedb.org/t/p/w250_and_h141_face/fgsHxz21B27hOOqQBiw9L6yWcM7.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "The Nun",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                      Row(
                        children: [
                          Column(
                            children: const [
                              Icon(Icons.notification_add_outlined),
                              Text(
                                'Info',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white70),
                              ),
                            ],
                          ),
                          kWidth6,
                          Column(
                            children: const [
                              Icon(Icons.alarm),
                              Text(
                                'Remind Me',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white70),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const Text(
                    "The Nun",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  kHeight10,
                  const Text(
                    "Landing the lead in the school musical is a\ndream come true for jodi,until the pressure\nsends her confidence-and her relationship\ninto a tailspin",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
      padding: const EdgeInsets.all(10),
    );
  }

  Widget _everyOnesWatching(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Friends",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20
              ),),
              kHeight10,
              const Text(
                  'This hit sitcom follows the merry adventures of six\n20 something pals as they navigate tthe pitfalls of\n work life and love in 1990s manhattan',style: TextStyle(
                color: Colors.white70
              ),),
              kHeight55,
              SizedBox(width: MediaQuery.of(context).size.width,
                child: Image.network(    "https://www.themoviedb.org/t/p/w250_and_h141_face/vpxjf8vGsOGRrW1aBYLv4RcSwmw.jpg",fit: BoxFit.cover,
                ),
              ),
              kHeight25,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.share),
                      Text("Share")
                    ],
                  ),
                  kWidth6,
                  Column(
                    children: [
                      Icon(Icons.add),
                      Text("Share")
                    ],
                  ),
                  kWidth6,
                  Column(
                    children: [
                      Icon(Icons.play_arrow),
                      Text("Share")
                    ],
                  ),
                ],
              ),
              
              kHeight35,
            ],
          );
        });
  }
}
