import 'package:donation/constant.dart';
import 'package:donation/screen/screen_home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Body(),
        bottomNavigationBar: Container(
          height: 67,
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, -20),
                    blurRadius: 20,
                    color: Color(0xFF0c1818).withOpacity(0.15))
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  color: kGrey,
                  size: 35,
                ),
                Icon(
                  Icons.book_outlined,
                  color: Colors.grey,
                  size: 35,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                  size: 35,
                ),
                Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 35,
                ),
              ],
            ),
          ),
        ));
  }
}
