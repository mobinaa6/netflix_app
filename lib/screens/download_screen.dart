import 'package:flutter/material.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({Key? key}) : super(key: key);

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
                      height: 300,
                      child: Image.asset('images/serial6.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 1,
                    width: 250,
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Image.asset('images/serial7.jpg')),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: 150,
                  color: Colors.red,
                ),
                Container(
                  height: 5,
                  width: 150,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Downloading.....',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.not_started_sharp,
                  color: Colors.white,
                  size: 50,
                ),
                Icon(
                  Icons.pause_circle_sharp,
                  color: Colors.white,
                  size: 50,
                ),
                Icon(
                  Icons.ios_share,
                  color: Colors.white,
                  size: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
