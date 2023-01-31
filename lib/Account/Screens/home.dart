// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:samaj_darpana/Account/Screens/sidebar.dart';
import 'package:samaj_darpana/Account/Screens/textcard.dart';

import '../donation.dart';
import 'blogs.dart';
import 'home_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const SidebarScreen(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.18),
              spreadRadius: 10,
              blurRadius: 3,
              offset: Offset(0, 8), // changes position of shadow
            ),
          ],
        ),
        height: 70,
      ),
      backgroundColor: Colors.white,
      // extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverPadding(
            padding: const EdgeInsets.only(top: 0.0),
            sliver: SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.yellow,
              pinned: true,
              snap: true,
              floating: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                      padding: EdgeInsets.only(top: 15, left: 40),
                      child: Text(
                        "Samaj Darpan",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 16, 16, 15)),
                      )),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15, left: 40),
                    child: Text(
                      "समाज दर्पण",
                      style: TextStyle(
                          color: Color.fromARGB(255, 15, 15, 15),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              leadingWidth: 100,
              toolbarHeight: 100.0,
              // ignore: unnecessary_new
              leading: Container(
                margin: EdgeInsets.only(
                  left: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SidebarScreen()));
                  },
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/sahitya.png')
                        as ImageProvider,
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
            ),
          )
        ],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 1,
                ),
                TextCard(),
                //SliderCarousel(),

                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 200,
                        color: Colors.purple[600],
                        child: const Center(
                            child: Text(
                          'Item 1',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 200,
                        color: Colors.purple[500],
                        child: const Center(
                            child: Text(
                          'Item 2',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 200,
                        color: Colors.purple[400],
                        child: const Center(
                            child: Text(
                          'Item 3',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 200,
                        color: Colors.purple[300],
                        child: const Center(
                            child: Text(
                          'Item 4',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Donation()));
                    },
                    //
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 124, 6, 6),
                      radius: 60.0,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/sahitya.png'),
                        radius: 50.0,
                      ),
                    ),
                  ),
                ),
                Blogs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
