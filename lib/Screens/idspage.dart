import 'package:flutter/material.dart';
import 'package:loginpage/widgets/decoration.dart';
import 'package:loginpage/widgets/imageSlider.dart';

class IdsPage extends StatelessWidget {
  const IdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BackgroundDecoration(),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.black26.withOpacity(
                            0.1), // Opacity value (0.5) for semi-transparency
                        borderRadius:
                            BorderRadius.circular(50), // Rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.2), // Shadow color and opacity
                            spreadRadius: 5, // to make the container attractive
                            blurRadius: 10, // Blur radius of the shadow
                            offset: Offset(0, 3), //
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundImage:
                                AssetImage('images/clubslogos/ids.jpg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                "Institute Development Society",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black26.withOpacity(
                          0.1), // Opacity value (0.5) for semi-transparency
                      borderRadius:
                          BorderRadius.circular(70), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              .withOpacity(0.2), // Shadow color and opacity
                          spreadRadius: 5, // Spread radius of the shadow
                          blurRadius: 10, // Blur radius of the shadow
                          offset: Offset(0, 2), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Expanded(
                        child: Container(
                          child: Text(
                            "We are a Tech club Specializing in following domains : Web design and development, Game development,Mobile app development, Blockchain development",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Text(
                          "WORKSHOPS AND EVENTS",
                          style: TextStyle(shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.grey,
                            ),
                          ], fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        imageSlider2(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Text(
                          "CORE MEMBERS",
                          style: TextStyle(shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.grey,
                            ),
                          ], fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        imageSlider(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
