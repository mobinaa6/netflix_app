import 'package:flutter/material.dart';
import 'package:flutter_application_netflix/screens/walkingdead_screen.dart';

class AllMovieScreen extends StatelessWidget {
  const AllMovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Getrow(0, 1, 'Batman', 'Last Of us'),
                SizedBox(height: 20),
                Getrow(2, 3, 'Transformers', 'Materix'),
                SizedBox(height: 20),
                Getrow(4, 5, 'the 355', 'john wick'),
                SizedBox(
                  height: 20,
                ),
                Getrow(6, 7, 'Narcos', 'Children of men'),
                SizedBox(height: 20),
                Getrow(8, 12, 'BadBoys', 'wrath Man'),
                SizedBox(height: 20),
                Getrow(10, 11, 'Martian', 'Bird Box'),
                SizedBox(height: 20),
                Getrow(13, 14, 'Martian', 'Bird Box'),
                SizedBox(height: 20),
                Getrow(15, 17, 'Martian', 'Bird Box'),
                SizedBox(height: 20),
                _getrow(context),
                SizedBox(height: 40),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      side: BorderSide(
                        width: 2,
                      ),
                      minimumSize: Size(200, 45),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget Getrow(int indeximage, int indeximag2, String name1, String name2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              Container(
                height: 90,
                child: Image.asset('images/film$indeximage.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                '$name1',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        SizedBox(width: 2),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              Container(
                height: 90,
                child: Image.asset('images/film$indeximag2.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                '$name2',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _getrow(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return WalkingDeadScreen();
                    },
                  ));
                },
                child: Container(
                  height: 90,
                  child: Image.asset('images/serial1.jpg'),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Walking Dead',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        SizedBox(width: 2),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              Container(
                height: 90,
                child: Image.asset('images/serial2.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                'Lost',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
