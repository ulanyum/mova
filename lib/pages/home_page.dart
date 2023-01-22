import 'package:flutter/material.dart';
import 'package:mova/pages/top_10_movies.dart';
import 'package:mova/widgets/bottom_navigation_bars.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
int _selectedIndex = 0;
  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "images/dr_strange.jpg",
                        ),
                        fit: BoxFit.fill)),
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0, 0.5, 1],
                  ),
                ),
              ),
              Positioned(
                top: 40,
                right: 15,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "images/pngwing.png",
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 240,
                      ),
                      IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          color: Colors.white),
                      IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Icon(Icons.notifications_outlined),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 220,
                left: 25,
                child: Text(
                  "Dr. Strange 2",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Positioned(
                  top: 270,
                  left: 25,
                  child: Text(
                    "Action, Superhero, Science, Fiction",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  )),
              Positioned(
                top: 300,
                left: 25,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.play_arrow),
                      label: Text("Play"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 240, 6, 6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "+ My List",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            color: Color.fromARGB(255, 246, 243, 243),
                            width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Color.fromARGB(255, 25, 26, 32),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Top 10 Movies This Week",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Top10Film(),
                                    ),
                                  );
                                },
                                child: Text("See all",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 240, 6, 6)))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Container(
                            height: 250,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "New Releases",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text("See all",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 240, 6, 6)))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 20),
                        child: Container(
                            height: 250,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                                cardim(),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
        ],
        
      ),
      bottomNavigationBar: BottomNavigationBars(



      ),

    );
  }

  cardim() {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.asset(
        "images/avatar1.jpg",
        fit: BoxFit.fill,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
