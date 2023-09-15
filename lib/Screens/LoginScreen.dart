import 'package:flutter/material.dart';
import 'package:loginpage/Screens/HomeScreen.dart';
import 'HomeScreen.dart';
// this is the loginscreen or the first screen where the user enters
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double sheight=MediaQuery.of(context).size.height;
    return Scaffold(
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
              stops: [0.17, 0.78], // Corresponding to the percentages in the CSS code
            ),
          ),

          //this Column includes an array of circle avatar and a container that has textfileds of user login and password
          child:Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white.withOpacity(0.1),
                        backgroundImage: const AssetImage('images/clubslogos/ids.jpg'),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Center(
                      child: Text('C A M P A V E R S E',style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,shadows:[  Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Colors.grey,
                      ),]

                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,),
                    //this container has information about the login address of user and password
                    child:Container(
                        width: 50,
                        height: 450,
                        decoration: BoxDecoration(
                          color: Colors.white70.withOpacity(0.1), // Opacity value (0.5) for semi-transparency
                          borderRadius: BorderRadius.circular(50), // Rounded corners
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2), // Shadow color and opacity
                              spreadRadius: 5, // Spread radius of the shadow
                              blurRadius: 10, // Offset of the shadow
                            ),
                          ],
                        ),
                        child: Padding(

                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Student Login",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w900,fontSize: 22),),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Student Id",
                                    fillColor: Colors.white.withOpacity(0.1), // Opacity for the input area
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide.none,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                    )
                                ),
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Password",

                                  fillColor: Colors.white.withOpacity(0.1), // Opacity for the input area
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide.none,
                                  ),
                                  prefixIcon: Icon(
                                      Icons.lock
                                  ),

                                ),
                              ),
                              TextButton(onPressed:(){},
                                child: Text("Forgot password?",style: TextStyle(color: Colors.white),),),
                              SizedBox(
                                height: 50,
                                width: 150,
                                child: ElevatedButton(onPressed: (){
                                  Navigator.pushNamed(context, '/secondScreen');
                                }, child: Text("Log in"),
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
                              ),
                              TextButton(
                                // on pressing this text the user will redirect it to signup screen
                                onPressed: (){
                                  Navigator.pushNamed(context, '/signUpScreen');
                                },
                                child: Text(
                                  "Dont have an account?  SignUp now!",
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
        )
     // this container holds the background gradient of the loginscreen

    );
  }
}
