import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'Screens/sidebar.dart';

class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  State<Donation> createState() => _Donationtate();
}

class _Donationtate extends State<Donation> {
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
      body: Center(
        child: NestedScrollView(
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
                        padding: EdgeInsets.only(top: 12),
                        child: Text(
                          "Shakambhari Mata",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 16, 16, 15)),
                        )),
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
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      child: Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.yellow,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage("assets/images/yuvaadmin.png"),
                              height: 190,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text("युवा राहुल अग्रवाल",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w800)),
                                  Text(" अध्यक्ष",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                  Text("मारवाड़ी युवा मंच",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700)),
                                  Text("7277756056",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
