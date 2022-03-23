import 'package:donation/constant.dart';
import 'package:donation/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Container(
        height: SizeConfig.screenHeight,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/photo.jpg"),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: kPrimary)),
                  ),
                  Row(
                    children: [
                      Container(
                          height: 24,
                          width: 24,
                          child: SvgPicture.asset("assets/icons/wallet.svg")),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "\$365.04",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Poppins",
                            fontSize: 22),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: kGrey.withOpacity(.15),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(
                      width: SizeConfig.screenWidth * .65,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10, top: 5),
                            focusedBorder: InputBorder.none,
                            hintText: "Type something...",
                            hintStyle: TextStyle(fontSize: 18),
                            enabledBorder: InputBorder.none),
                      ),
                    ),
                    Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [kPrimary, kPrimary.withOpacity(.6)]),
                      ),
                      child: Container(
                        width: 80,
                        height: 38,
                        alignment: Alignment.center,
                        child: Text(
                          "Search",
                          style: TextStyle(
                              color: kBackground,
                              fontFamily: "Poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Catergories("assets/images/Stethoscope.png", "Healt", false),
                  Catergories(
                      "assets/images/Student Center.png", "Education", false),
                  Catergories(
                      "assets/images/Animal Shelter.png", "Animals", false),
                  Catergories("assets/icons/cat-01.svg", "view all", true)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  CardDonate(
                      "https://images.unsplash.com/photo-1509099836639-18ba1795216d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=731&q=80",
                      "Donate for kids to their well being"),
                  CardDonate(
                      "https://images.unsplash.com/photo-1619714193165-495007bc6b63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      "Sedekah Subuh"),
                  CardDonate(
                      "https://images.unsplash.com/photo-1619714193165-495007bc6b63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      "Sedekah Subuh"),
                  CardDonate(
                      "https://images.unsplash.com/photo-1619714193165-495007bc6b63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      "Sedekah Subuh"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding CardDonate(String img, String textImg) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 10),
      child: Card(
        elevation: 10,
        shadowColor: kGrey.withOpacity(.35),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                img,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textImg,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 17,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 30,
                          height: 30,
                          child: SvgPicture.asset("assets/icons/logo.svg")),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Isha Foundation",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [kPrimary, kPrimary.withOpacity(.6)]),
                    ),
                    child: Container(
                      width: 80,
                      height: 38,
                      alignment: Alignment.center,
                      child: Text(
                        "Donate",
                        style: TextStyle(
                            color: kBackground,
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  Column Catergories(String img, String textCat, bool? isSvg) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(20),
          child: isSvg == true ? SvgPicture.asset(img) : Image.asset(img),
          decoration: BoxDecoration(
              color: kPrimary.withOpacity(.2),
              borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          textCat,
          style: TextStyle(
              color: kGrey,
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeight.w800),
        )
      ],
    );
  }
}
