import 'package:assignment_one/utils/constant.dart';
import 'package:flutter/material.dart';

Widget buildNavigationBar() {
  return Container(
    height: gHeight / 12,
    color: navigationBarColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              color: navigationBarUtilsColor,
              size: 35,
            ),
            Text(
              "Authors",
              style: TextStyle(color: navigationBarUtilsColor, fontSize: 12),
            )
          ],
        ),
        SizedBox(width: gWidth / 7),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.article,
              color: navigationBarUtilsColor,
              size: 35,
            ),
            Text(
              "Papers",
              style: TextStyle(color: navigationBarUtilsColor, fontSize: 12),
            )
          ],
        ),
        SizedBox(width: gWidth / 7),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book,
              color: navigationBarUtilsColor,
              size: 35,
            ),
            Text(
              "Books",
              style: TextStyle(color: navigationBarUtilsColor, fontSize: 12),
            )
          ],
        ),
        SizedBox(width: gWidth / 7),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              color: navigationBarUtilsColor,
              size: 35,
            ),
            Text(
              "Search",
              style: TextStyle(color: navigationBarUtilsColor, fontSize: 12),
            )
          ],
        )
      ],
    ),
  );
}

Widget buildAppBar() {
  return AppBar(
    backgroundColor: appBarColor,
    title: Text(
      "Welcome\nMehmet Ozcan",
      style: TextStyle(color: appBarUtilsColor, fontFamily: 'Wallpoet'),
    ),
    leading: GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Icon(
          Icons.account_circle,
          size: 40,
          color: appBarUtilsColor,
        ),
      ),
    ),
    actions: <Widget>[
      Padding(
          padding: EdgeInsets.only(right: 2),
          child: GestureDetector(
            child: Icon(
              Icons.location_on,
              size: 25.0,
              color: appBarUtilsColor,
            ),
          )),
      Padding(
        padding: EdgeInsets.only(right: 20.0, bottom: 20, top: 20),
        child: Text(
          "Eskişehir",
          style: TextStyle(color: appBarUtilsColor, fontSize: 15),
        ),
      ),
    ],
  );
}

Widget buildBodyPart() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Column(
        children: [
          buildUpcomingPrePart(),
          SizedBox(
            height: gHeight / 11,
          ),
          buildFavoritesPart()
        ],
      ),
    ),
  );
}

Widget buildUpcomingPrePart() {
  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Upcoming Conferences",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: gWidth / 7),
        Text(
          "View All>>",
          style: TextStyle(
              fontSize: 12,
              color: linkColor,
              decoration: TextDecoration.underline),
        ),
      ],
    ),
    SizedBox(
      height: gHeight / 35,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/cnf_1.png",
          width: gWidth / 2.6,
          height: gHeight / 7,
        ),
        SizedBox(width: gWidth / 22),
        Image.asset(
          "assets/images/cnf_2.png",
          width: gWidth / 2.6,
          height: gHeight / 7,
        ),
      ],
    ),
    SizedBox(
      height: gHeight / 250,
    ),
    Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: gHeight / 400,
              width: gWidth / 2.6,
              color: lineColor.withOpacity(0.2),
            ),
            SizedBox(width: gWidth / 22),
            Container(
              height: gHeight / 400,
              width: gWidth / 2.6,
              color: lineColor.withOpacity(0.2),
            )
          ],
        ),
      ],
    ),
    SizedBox(
      height: gHeight / 75,
    ),
    Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: gWidth / 2.6,
              child: Text(
                "Applying Education in a Complex World",
              ),
            ),
            SizedBox(width: gWidth / 22),
            Container(
                width: gWidth / 2.6,
                child: Text("HERITAGES: Past and Present - Built and Social")),
          ],
        ),
      ],
    )
  ]);
}

Widget buildFavoritesPart() {
  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Favorites",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    SizedBox(
      height: gHeight / 35,
    ),
    Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/cnf_3.png",
            width: gWidth / 2.6,
            height: gHeight / 7,
          ),
        ],
      ),
    ),
    SizedBox(
      height: gHeight / 75,
    ),
    Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: gHeight / 400,
                width: gWidth / 2.6,
                color: lineColor.withOpacity(0.2),
              ),
            ),
          ],
        ),
      ],
    ),
    SizedBox(
      height: gHeight / 75,
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: gWidth / 2.6,
                child: Text(
                  "New Perspectives in Science Education",
                ),
              ),
            ],
          ),
        ),
      ],
    )
  ]);
}
