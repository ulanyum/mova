import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mova/pages/login_Page1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _currentPage = 0;

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: controller,
          onPageChanged: (page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/page1.jpeg",
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
                  stops: [0, 0, 0.3, 1],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/page2.jpeg",
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
                  stops: [0, 0, 0.3, 1],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/page3.jpeg",
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
                  stops: [0, 0, 0.3, 1],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 50,
          left: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome To Mova",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "The best movie streaming app of the century\n to make your days great!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              AnimatedSmoothIndicator(
                activeIndex: _currentPage,
                count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color.fromARGB(255, 240, 6, 6),
                  dotHeight: 8.5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 240, 6, 6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27))),
                      onPressed: () {Navigator.push( context, MaterialPageRoute(builder: (context) => LoginPage1(),),);},
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 20),
                      ))),
            ],
          ),
        )
      ]),
    );
  }
}
