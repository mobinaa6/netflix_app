import 'package:flutter/material.dart';

class Searcg_Screen extends StatelessWidget {
  const Searcg_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                SizedBox(height: 20),
                _getSearch(),
              ],
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                  height: 300, child: Image.asset('images/film$index.jpg'));
            },
          ))
        ],
      )),
    );
  }

  Widget _getSearch() {
    return Container(
      padding: EdgeInsets.only(left: 18, right: 18, top: 10),
      height: 46,
      decoration: BoxDecoration(
        color: Color(0xff1C1F2E),
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Image.asset('images/icon_search.png'),
            SizedBox(width: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Movie',
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
