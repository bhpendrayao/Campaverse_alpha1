import 'package:flutter/material.dart';
import 'package:loginpage/widgets/decoration.dart';

//This page is made for the notice board icon in the homepage
class NoticeBoard extends StatelessWidget {
  const NoticeBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);},),
        title: Text('Notice Board',textAlign:TextAlign.center),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top:60),
          decoration: BackgroundDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NoticeBoards(tile_of_notices: 'UPCOMING EVENTS',),
              NoticeBoards(tile_of_notices: 'RECENT NOTICES',),
              NoticeBoards(tile_of_notices: 'STUDENT NOTICES',),
              NoticeBoards(tile_of_notices: 'HOSTEL NOTICES',),
            ],
          ),
        ),
      ),
    );
  }
}

//This is the basic structure of the notice board with variable title
class NoticeBoards extends StatelessWidget {
  final String tile_of_notices;
  const NoticeBoards({
    super.key, required this.tile_of_notices,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(tile_of_notices,style: TextStyle(color: Colors.white,fontSize: 20.0),textAlign: TextAlign.center,),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black87.withOpacity(0.1)),
                  child: Column(
                    children: [
                      Notices(),
                      Notices(),
                      Notices(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//This is the content to be displayed in the notice board
class Notices extends StatelessWidget {
  const Notices({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10),
      child: Text('Notice1'),
    );
  }
}
