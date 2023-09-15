

import 'package:flutter/cupertino.dart';

BoxDecoration BackgroundDecoration(){
  return BoxDecoration(
    gradient: RadialGradient(
      center: Alignment.center,
      radius: 0.9, // Radius of 1.0 makes it circular
      colors: [
        Color.fromRGBO(241, 36, 85, 1),
        Color.fromRGBO(9, 15, 21, 1),
      ],
      stops: [0.17, 0.78], // Corresponding to the percentages in the CSS code
    ),
  );
}