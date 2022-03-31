import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pagechildren(double width) {
    return <Widget>[
      Container(
        width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "We Are Learning Flutter",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "What did you feel unqualified to do for work? How did you respond to the challenge?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40.0),
                  child: Text(
                    "Our Packages",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      Image.asset(
        "assets/images/flutter.jpg",
        width: width,
        height: width,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pagechildren(constraints.biggest.width/2),
        );
      } else {
        return Column(
          children: pagechildren(constraints.biggest.width),
        );
      }
    });
  }
}
