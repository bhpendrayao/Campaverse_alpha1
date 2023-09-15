import 'package:flutter/material.dart';
import 'package:loginpage/widgets/decoration.dart';

class VnitClubs extends StatelessWidget {
  final List<String> clublogos = [
    'images/clubslogos/ecell.jpg',
    'images/clubslogos/hallabol.jpg',
    'images/clubslogos/ids.jpg',
    'images/clubslogos/ieee.jpg',
    'images/clubslogos/ivlabs.jpg',
    'images/clubslogos/mag.jpg',
    'images/clubslogos/octaves.jpg',
    'images/clubs/groves.jpg',
    'images/clubs/cyclistsofvnit.jpg',
    'images/clubs/clubcapture.jpg',
    'images/clubs/quiz.jpg',
    'images/clubs/savvad.jpg',
    'images/clubs/shell.jpg',
    'images/clubs/studentChapter.jpg',
    'images/clubs/teamvelocitry.jpg',
    'images/clubs/tesla.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VNIT CLUBS '),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(10, 1, 11, 1),
      ),
      body: Container(
        decoration: BackgroundDecoration(),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemCount: 16,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: ClubCard(
                clublogos: clublogos[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ClubCard extends StatefulWidget {
  final String clublogos;
  ClubCard({required this.clublogos});
  @override
  _ClubCardState createState() => _ClubCardState();
}

class _ClubCardState extends State<ClubCard> {
  bool _isFollowing = false;

  void _toggleFollow() {
    setState(() {
      _isFollowing = !_isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Container(
          height: 250,
          child: Column(
            children: [
              Expanded(
                flex: 12,
                child: Container(
                    width: double.infinity,
                    // Replace with your image
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(widget.clublogos),
                    ))),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: Color.fromRGBO(241, 50, 90, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/clubdetails');
                        },
                        icon: Icon(
                          Icons.info_outline,
                          size: 30,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.people, size: 30),
                          SizedBox(width: 4),
                          Text('1000'), // Replace with follower count
                        ],
                      ),
                      ElevatedButton(
                        onPressed: _toggleFollow,
                        style: ElevatedButton.styleFrom(
                          primary: _isFollowing
                              ? Colors.grey
                              : Color.fromRGBO(28, 7, 81, 1),
                        ),
                        child: Text(_isFollowing
                            ? 'Added Galaxy points'
                            : 'Add Galaxy points to your account'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
