import 'package:flutter/material.dart';

class WalkingDeadScreen extends StatelessWidget {
  const WalkingDeadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [Image.asset('images/icon_search.png')],
        title: Center(child: Image.asset('images/n3.png')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 500,
                      child: Image.asset('images/serial8.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 200,
                    width: 250,
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Image.asset('images/serial1.jpg')),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Walking Dead',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Suspenseful',
                    style: TextStyle(color: Color(0xffC5C5C5), fontSize: 12),
                  ),
                ),
                SizedBox(width: 7),
                Container(
                  height: 9,
                  width: 9,
                  decoration: BoxDecoration(
                      color: Colors.grey[800], shape: BoxShape.circle),
                ),
                SizedBox(width: 10),
                Text(
                  'Exciting',
                  style: TextStyle(color: Color(0xffC5C5C5), fontSize: 12),
                ),
                SizedBox(width: 7),
                Container(
                  height: 9,
                  width: 9,
                  decoration: BoxDecoration(
                      color: Colors.grey[800], shape: BoxShape.circle),
                ),
                SizedBox(width: 10),
                Text(
                  'Theiller',
                  style: TextStyle(color: Color(0xffC5C5C5), fontSize: 12),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                      primary: Colors.black,
                      minimumSize: Size(30, 35)),
                  onPressed: () {},
                  child: Text('18+'),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 30),
                Image.asset(
                  'images/stareh.png',
                  height: 25,
                ),
                Image.asset(
                  'images/stareh.png',
                  height: 25,
                ),
                Image.asset(
                  'images/stareh.png',
                  height: 25,
                ),
                Image.asset(
                  'images/stareh.png',
                  height: 25,
                ),
                SizedBox(width: 10),
                Text(
                  '8.3',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'sheriff Depurty rick Grimes wakes up from a coma to learn the world is in ruins and must lead a group of survivors stay alive',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Banner',
              style: TextStyle(color: Colors.red),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 300,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 300,
                        width: 300,
                        child: Image.asset('images/wak$index.jpg'),
                      ),
                    );
                  },
                ),
              ),
            ),
            Text(
              'Actors',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 300,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 250,
                        width: 250,
                        child: Image.asset('images/bazi$index.jpg'),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            ClipRRect(
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
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
