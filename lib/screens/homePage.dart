import 'package:flutter/material.dart';
import 'package:uts_fauzan_nadhilah/screens/detailPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> category_list = [
    'Hotel',
    'Restoran',
    'Destinasi',
    'Cafe',
  ];

  List<bool> category_bool = [
    true,
    false,
    false,
    false,
  ];

  List<Map<String, dynamic>> hotelList = [
    {
      'name': 'Harmoni Plaza',
      'image': 'assets/hotel_A.jpg',
      'description': 'Rp1.000.000/malam',
    },
    {
      'name': 'Grand Oasis Resort',
      'image': 'assets/hotel_B.jpg',
      'description': 'Rp800.000/malam',
    },
    {
      'name': 'Elegance Suites',
      'image': 'assets/hotel_C.jpg',
      'description': 'Rp1.500.000/malam',
    },
    {
      'name': 'Skyline View Hotel',
      'image': 'assets/hotel_D.jpg',
      'description': 'Rp5.500.000/malam',
    },
    // Add more hotels as needed
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
        color: Color(0xffF2F2F2),
        height: myHeight,
        width: myWidth,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: myWidth * 0.05, vertical: myHeight * 0.03),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      profileImage(),
                      SizedBox(
                        width: myWidth * 0.02,
                      ),
                      title_text(),
                    ],
                  ),
                  notificationIcon()
                ],
              ),
              SizedBox(
                height: myHeight * 0.04,
              ),
              title(),
              SizedBox(
                height: myHeight * 0.03,
              ),
              Row(
                children: [
                  Expanded(flex: 5, child: searchBox()),
                  SizedBox(
                    width: myWidth * 0.03,
                  ),
                  Expanded(flex: 1, child: filterIcon())
                ],
              ),
              SizedBox(
                height: myHeight * 0.03,
              ),
              category(),
              SizedBox(
                height: myHeight * 0.03,
              ),
              hotelListSection(),
            ],
          ),
        ));
  }

  Widget profileImage() {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      height: myHeight * 0.05,
      width: myWidth * 0.1,
      decoration: BoxDecoration(
          // color: Color(0xff514FFB).withOpacity(0.1),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Image.asset(
          "assets/userFoto.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget title_text() {
    return RichText(
        text: TextSpan(
            text: 'Hello, ',
            style: DefaultTextStyle.of(context).style,
            children: const [
          TextSpan(
              text: 'Fauzan', style: TextStyle(fontWeight: FontWeight.bold))
        ]));
  }

  Widget notificationIcon() {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      height: myHeight * 0.06,
      width: myWidth * 0.1,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                spreadRadius: 5,
                color: Colors.grey.shade200,
                offset: Offset(3, 3))
          ]),
      child: Center(
        child: Image.asset(
          'assets/icon/bell.png',
          height: myHeight * 0.02,
        ),
      ),
    );
  }

  Widget title() {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Mau Pergi \nKemana hari ini?',
        style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: myHeight * 0.05),
      ),
    );
  }

  Widget searchBox() {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: myWidth * 0.04),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                spreadRadius: 5,
                color: Colors.grey.shade200,
                offset: Offset(3, 3))
          ],
          borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Cari Destinasi',
            hintStyle: TextStyle(color: Colors.grey.shade400),
            icon: Image.asset(
              'assets/icon/search0.png',
              color: Colors.blueGrey.shade200,
              height: myHeight * 0.02,
            )),
      ),
    );
  }

  Widget filterIcon() {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: myHeight * 0.018),
      decoration: BoxDecoration(
          color: Colors.lightBlue,
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                spreadRadius: 5,
                color: Colors.grey.shade200,
                offset: Offset(3, 3))
          ],
          borderRadius: BorderRadius.circular(16)),
      child: Image.asset(
        'assets/icon/filter.png',
        height: myHeight * 0.02,
        color: Colors.white,
      ),
    );
  }

  Widget category_item(String txt, int index) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          right: myWidth * 0.04, top: myHeight * 0.01, bottom: myHeight * 0.01),
      child: GestureDetector(
        onTap: () {
          setState(() {
            category_bool = [
              false,
              false,
              false,
              false,
            ];
            category_bool[index] = true;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: myWidth * 0.07),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: category_bool[index] == true
                ? Colors.lightBlue
                : Colors.grey.shade200,
          ),
          child: Center(
            child: Text(
              txt,
              style: TextStyle(
                  color: category_bool[index] == true
                      ? Colors.white
                      : Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget category() {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      height: myHeight * 0.06,
      child: ListView.builder(
        itemCount: category_list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return category_item(category_list[index], index);
        },
      ),
    );
  }

  Widget hotelCard(String name, String image, String description) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              name: name,
              image: image,
              description: description,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: myWidth * 0.04),
        width: myWidth * 0.4, // Adjust the card width as needed
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  image,
                  height: myHeight * 0.2, // Adjust the image height as needed
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(myWidth * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: myHeight * 0.02,
                      ),
                    ),
                    SizedBox(
                      height: myHeight * 0.01,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: myHeight * 0.015,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget hotelListSection() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: hotelList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return hotelCard(
            hotelList[index]['name'],
            hotelList[index]['image'],
            hotelList[index]['description'],
          );
        },
      ),
    );
  }
}
