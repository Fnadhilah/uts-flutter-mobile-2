import 'package:flutter/material.dart';
import 'package:uts_fauzan_nadhilah/screens/homePage.dart';
import 'package:uts_fauzan_nadhilah/screens/savePage.dart';
import 'package:uts_fauzan_nadhilah/screens/searchPage.dart';
import 'package:uts_fauzan_nadhilah/screens/ticketPage.dart';
import 'package:uts_fauzan_nadhilah/screens/userPage.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int current_index = 0;
  static List<Widget> pages = [
    HomePage(),
    SearchPage(),
    TicketPage(),
    SavePage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: pages[current_index],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            left: myWidth * 0.04,
            right: myWidth * 0.04,
            bottom: myWidth * 0.02),
        child: Container(
          height: myHeight * 0.1,
          decoration: BoxDecoration(
              color: Colors.lightBlue, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      current_index = 0;
                    });
                  },
                  icon: current_index == 0
                      ? Image.asset(
                          'assets/icon/home1.png',
                          height: myHeight * 0.02,
                          color: Colors.white,
                        )
                      : Image.asset(
                          'assets/icon/home0.png',
                          height: myHeight * 0.02,
                          color: Colors.white,
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      current_index = 1;
                    });
                  },
                  icon: current_index == 1
                      ? Image.asset(
                          'assets/icon/search1.png',
                          height: myHeight * 0.02,
                          color: Colors.white,
                        )
                      : Image.asset(
                          'assets/icon/search0.png',
                          height: myHeight * 0.02,
                          color: Colors.white,
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      current_index = 2;
                    });
                  },
                  icon: current_index == 2
                      ? Image.asset(
                          'assets/icon/tickets1.png',
                          height: myHeight * 0.02,
                          color: Colors.white,
                        )
                      : Image.asset(
                          'assets/icon/tickets0.png',
                          height: myHeight * 0.02,
                          color: Colors.white,
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      current_index = 3;
                    });
                  },
                  icon: current_index == 3
                      ? Image.asset(
                          'assets/icon/bookmark1.png',
                          height: myHeight * 0.02,
                          color: Colors.white,
                        )
                      : Image.asset(
                          'assets/icon/bookmark0.png',
                          height: myHeight * 0.02,
                          color: Colors.white,
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      current_index = 4;
                    });
                  },
                  icon: current_index == 4
                      ? Image.asset(
                          'assets/icon/user1.png',
                          height: myHeight * 0.02,
                          color: Colors.white,
                        )
                      : Image.asset(
                          'assets/icon/user0.png',
                          height: myHeight * 0.02,
                          color: Colors.white,
                        )),
            ],
          ),
        ),
      ),
    ));
  }
}
