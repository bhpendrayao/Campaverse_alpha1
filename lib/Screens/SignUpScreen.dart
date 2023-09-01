import 'dart:html';

import 'package:flutter/material.dart';
import 'package:loginpage/Screens/SecondScreen.dart';
import 'SecondScreen.dart';
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
  late  File? selectedImage ;



  void updateDrawerHeader(String name, String enrollmentNo) {
    setState(() {
      _name = name;
      _enrollmentNo = enrollmentNo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
            gradient:  LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(199, 113, 214, 1),
                Color.fromRGBO(28, 7, 81, 1),
                Color.fromRGBO(10, 1, 11, 1),
              ],
              stops: [0.03, 0.5, 0.87],
              transform: GradientRotation(135 * 3.14159265 / 180),
            ),
          ),


          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Stack(
                    children : [ CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white.withOpacity(0.1),
                      backgroundImage: AssetImage('images/defaultimage.jpeg'),

                    ),
                      IconButton(onPressed: (){
                      showModalBottomSheet(
                        context: context,
                       builder: (BuildContext context) {
                       return Column(
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                        ListTile(
                         leading: Icon(Icons.photo_library),
                         title: Text('Choose from Gallery'),
                         onTap: () {
                           Navigator.pop(context);
                         // _selectImage(ImageSource.gallery);
                             },
                          ),
                        ListTile(
                             leading: Icon(Icons.camera_alt),
                                title: Text('Take a Photo'),
                             onTap: () {
                             Navigator.pop(context);
                         //  _selectImage(ImageSource.camera);
                          },
                        ),
                        ],
                       );
                        },
                          );
                           },
   icon:Icon(Icons.camera_alt_outlined))
                  ]
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Center(
                  child: Text('C A M P A V E R S E',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700

                  ),),
                ),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70,),
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
                          blurRadius: 10, // Blur radius of the shadow
                          offset: Offset(0, 3), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: Padding(

                      padding: const EdgeInsets.symmetric(vertical:20,horizontal: 20),
                      child: Column(
                        children: [
                          Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20),),
                          SizedBox(height: 30,),
                          TextField(
                             decoration:
                             InputDecoration(
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
                                 )
                             ),
                          ),
                          SizedBox(height: 20,),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "College email id",
                                fillColor: Colors.white.withOpacity(0.1), // Opacity for the input area
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: Icon(
                                  Icons.email_rounded,
                                )
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextField(decoration: InputDecoration(
                              hintText: "Enrollment No.",
                              fillColor: Colors.white.withOpacity(0.1), // Opacity for the input area
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
                          SizedBox(height: 20,),
                          TextField(
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
                          SizedBox(height: 25,),

                          ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context, '/secondScreen');
                          }, child: Text("Sign Up"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white.withOpacity(0.2), // Change button color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // Rounded corners
                              ),
                              minimumSize: Size(150, 50), // Set minimum button size
                            ),
                          ),

                        ],
                      ),
                    )
                ),
              )



            ],
          ),
        )
    );
  }
}

