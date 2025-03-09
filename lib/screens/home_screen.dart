import 'package:flutter/material.dart';
import 'package:flutter_application_netflix/screens/all_movie_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _getRow(),
          ),
          SliverToBoxAdapter(
            child: _getStoryListBox(),
          ),
          SliverToBoxAdapter(
            child: getImageMovie('فیلم ', 'film', context),
          ),
          SliverToBoxAdapter(
            child: getImageMovie('سریال های برتر ', 'serial', context),
          ),
          SliverToBoxAdapter(
            child: getImageMovie('فیلم های مارول ', 'marvel', context),
          ),
          SliverToBoxAdapter(
            child: getImageMovie('ترسناک ', 'tars', context),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                height: 300,
                child: Image.asset(
                  'images/n3.jpg',
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'با ما بهترین فیلم و سریال ها را ببینید',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ))
        ],
      )),
    );
  }

  Widget _getRow() {
    return Row(
      children: [
        Container(
          height: 100,
          child: Image.asset(
            'images/n.png',
            height: 150,
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black, minimumSize: Size(40, 40)),
            onPressed: () {},
            child: Text(
              'movie',
              style: TextStyle(color: Colors.white),
            )),
        SizedBox(
          width: 5,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black, minimumSize: Size(40, 40)),
            onPressed: () {},
            child: Text(
              'seial',
              style: TextStyle(color: Colors.white),
            )),
        SizedBox(
          width: 0,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black, minimumSize: Size(40, 40)),
            onPressed: () {},
            child: Text(
              'mini ',
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }

  Widget _getStoryListBox() {
    //به ما میدهد test یک عدد استوری با مشخصه
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/serial$index.jpg'),
              radius: 40,
            ),
          );
        },
      ),
    );
  }

  Widget getImageMovie(String header, String nameimage, context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    '$header',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return AllMovieScreen();
                        },
                      ));
                    },
                    icon: Icon(
                      Icons.arrow_drop_down_circle_sharp,
                      color: Colors.red,
                    )),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'همه',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 170,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: 120,
                          child: Image.asset('images/$nameimage$index.jpg'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ],
    );
  }
}
