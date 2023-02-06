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
                // SliderCarousel(),
                Column(
                  children: [
                    SizedBox(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 17.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/diary.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.orangeAccent,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                              Text('Digital Diary'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/gallery.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.orangeAccent,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                              Text('Gallery'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/samaj.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.orangeAccent,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                              Text('Marwari Yuva manch'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/shakambhari.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.orangeAccent,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                              Text('Shakambhari'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/shyambaba.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.orangeAccent,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                              Text('Shyam Baba'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/dadiparivar.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.orangeAccent,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                              Text('Dadi Pariwar'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/upcoming.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.orangeAccent,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                              Text('Upcoming Event'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/sammelan.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.orangeAccent,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                              Text('Mahela Sameti'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/sahitya.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.orangeAccent,
                                    width: 5.0,
                                  ),
                                ),
                              ),
                              Text('Shristi Sakha'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '•••',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),

                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/donation.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.orangeAccent,
                      width: 5.0,
                    ),
                  ),
                ),
                Text('Donation'),
                Blogs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
