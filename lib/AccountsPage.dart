import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strong_pass/Data.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountsPage extends StatefulWidget {
  @override
  _AccountsPageState createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text(
          "My Account",
          style: GoogleFonts.mcLaren(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        color: Colors.black12,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.cyan,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Aditya Negandhi",
                        style: GoogleFonts.mcLaren(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.sync,
                        size: 30,
                        color: Colors.cyan,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sync Data",
                        style: GoogleFonts.mcLaren(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.signOutAlt,
                        size: 30,
                        color: Colors.cyan,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Logout",
                        style: GoogleFonts.mcLaren(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.heart,
                        size: 30,
                        color: Colors.cyan,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Made by ",
                            style: GoogleFonts.mcLaren(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: ()async{
                              await launch(url);
                            },
                            child: Text(
                              "binarybeast01",
                              style: GoogleFonts.mcLaren(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 20,
                                  color: Colors.cyan,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 250,
              child: Image.asset("assets/purse.png"),
            ),
          ],
        ),
      ),
    );
  }
}
