import 'package:flutter/material.dart';
import 'package:loginpage/widgets/decoration.dart';

class Club extends StatelessWidget {
  const Club({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BackgroundDecoration(),
      child: SingleChildScrollView(
        child: ClubNumbers(),
      ),
    );
  }
}

class ClubNumbers extends StatelessWidget {
  const ClubNumbers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 5.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2), // Opacity value (0.5) for semi-transparency
          borderRadius: BorderRadius.circular(30), // Rounded corners
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff650707).withOpacity(0.8),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "CLUB NAME",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Club Description",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25.0),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "WORKSHOPS AND EVENTS",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "CORE MEMBERS",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text('MERCHANDISE',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
          ],
        ),
      ),
    );
  }
}