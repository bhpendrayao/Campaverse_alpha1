import 'package:flutter/material.dart';
import 'package:loginpage/Screens/HomeScreen.dart';
import 'HomeScreen.dart';
import 'package:loginpage/widgets/MyDrawerHeader.dart';
import 'package:image_picker/image_picker.dart';
class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late String _name;
  late String _enrollmentNo;

  void updateDrawerHeader(String name, String enrollmentNo) {
    setState(() {
      _name = name;
      _enrollmentNo = enrollmentNo;
    });
  }

  @override
  Widget build(BuildContext context) {
    double sheight=MediaQuery.of(context).size.height;
    return Scaffold(
      //this container includes the =background gradient of the screen
        body: Container(
          height: sheight,
        decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.9, // Radius of 1.0 makes it circular
          colors: [
            Color.fromRGBO(241, 36, 85, 1),
            Color.fromRGBO(9, 15, 21, 1),
          ],
          stops: [
            0.17,
            0.78
          ],
        ),
      ),
         child: Center(
           child: SingleChildScrollView(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:10.0),
                child: Center(
                  child: Stack(children: [
                    Column(children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white.withOpacity(0.1),
                        backgroundImage: AssetImage('images/avatar.jpeg'),
                      ),
                    ])
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text(
                    'C A M P A V E R S E',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Colors.grey,
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Container(
                    width: 50,
                    height: 450,
                    decoration: BoxDecoration(
                      color: Colors.white70.withOpacity(
                          0.1), // Opacity value (0.5) for semi-transparency
                      borderRadius: BorderRadius.circular(50), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              .withOpacity(0.2), // Shadow color and opacity
                          spreadRadius: 5, // Spread radius of the shadow
                          blurRadius: 10, // Blur radius of the shadow
                          offset: Offset(0, 3), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Name",
                                fillColor: Colors.white.withOpacity(0.1),
                                // Opacity for the input area
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "College email id",
                                fillColor: Colors.white
                                    .withOpacity(0.1), // Opacity for the input area
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: Icon(
                                  Icons.email_rounded,
                                )),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Student Id",
                              fillColor: Colors.white
                                  .withOpacity(0.1), // Opacity for the input area
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(
                                Icons.account_circle,
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              fillColor: Colors.white
                                  .withOpacity(0.1), // Opacity for the input area
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/secondScreen');
                            },
                            child: Text("Sign Up"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white
                                  .withOpacity(0.2), // Change button color
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(20), // Rounded corners
                              ),
                              minimumSize: Size(150, 50), // Set minimum button size
                            ),
                          ),
                        ],
                      ),
                    )),
              )
            ],
        ),
      ),
         ),
    )

    );
  }
}
