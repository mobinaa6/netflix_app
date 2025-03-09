import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_netflix/screens/main_screen.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Login_screen extends StatelessWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CircularParticle(
            height: 800,
            width: 392,
            awayRadius: 230,
            numberOfParticles: 400,
            speedOfParticles: 1,
            maxParticleSize: 5,
            particleColor: Colors.blueGrey,
            awayAnimationDuration: Duration(seconds: 2),
            awayAnimationCurve: Curves.linearToEaseOut,
            isRandomColor: false,
            isRandSize: true,
            connectDots: true,
            hoverColor: Colors.grey,
          ),
          Center(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 550,
                  width: 300,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/netflix.png',
                        height: 200,
                      ),
                      _gettextfilled('Email or phone number'),
                      SizedBox(height: 30),
                      _gettextfilled('Password'),
                      SizedBox(height: 30),
                      _gettextfilled('Confirm Password'),
                      SizedBox(height: 30),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            side: BorderSide(
                              width: 2,
                            ),
                            minimumSize: Size(250, 45),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return MainScreen();
                              },
                            ));
                          },
                          child: Text('Login'),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Aireoby on Netflix?  ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Sing in',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _gettextfilled(String nameHint) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        labelText: '$nameHint',
        labelStyle: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            color: Color(0xffC5C5C5),
            width: 3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            color: Colors.red,
            width: 3,
          ),
        ),
      ),
    );
  }
}
