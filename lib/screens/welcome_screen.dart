import 'package:flutter/material.dart';
import 'package:fade_out_particle/fade_out_particle.dart';
import 'package:flutter_application_netflix/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/login.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  side: BorderSide(
                    width: 2,
                    color: Colors.white,
                  ),
                  minimumSize: Size(200, 40),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Login_screen();
                    },
                  ));
                },
                child: Text('Next'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              'welcome',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
