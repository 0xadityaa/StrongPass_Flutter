import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strong_pass/AccountsPage.dart';
import 'package:strong_pass/Data.dart';
import 'package:strong_pass/Stored_page.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'password_genrator.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool upperCase = true;
  bool lowerCase = true;
  bool numCase = true;
  bool specCase = true;

  String _generatedPassword = "Your pswd will be here";
  bool pswdTextState = false;
  int _selectedIndex = 0;
  String givenAlias;
  TextEditingController pswdAliasControllar = TextEditingController();
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  // ];
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  //   print(index);
  //   if (index == 1) {
  //     Get.to(StoredPswd());
  //   } else if (index == 2) {
  //     Get.to(AccountsPage());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // var navPos;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text(
          "Strong Pass",
          style: GoogleFonts.mcLaren(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Select Things to use in your Password",
                        style: GoogleFonts.mcLaren(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Uppercase Letters",
                            style: GoogleFonts.mcLaren(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          ToggleSwitch(
                            minWidth: 70.0,
                            cornerRadius: 10.0,
                            activeBgColor: Colors.cyan,
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            labels: ['YES', 'NO'],
                            icons: [
                              FontAwesomeIcons.check,
                              FontAwesomeIcons.times
                            ],
                            onToggle: (index1) {
                              print('switched to: $index1');
                              if (index1 == 1) {
                                // isWithLetters == true;
                                setState(() {
                                  upperCase = false;
                                });
                              } else {
                                upperCase = true;
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lowercase Letters",
                            style: GoogleFonts.mcLaren(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          ToggleSwitch(
                            minWidth: 70.0,
                            cornerRadius: 10.0,
                            activeBgColor: Colors.cyan,
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            labels: ['YES', 'NO'],
                            icons: [
                              FontAwesomeIcons.check,
                              FontAwesomeIcons.times
                            ],
                            onToggle: (index2) {
                              print('switched to: $index2');
                              if (index2 == 1) {
                                // isWithLetters == true;
                                setState(() {
                                  lowerCase = false;
                                });
                              } else {
                                lowerCase = true;
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Numbers",
                            style: GoogleFonts.mcLaren(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          ToggleSwitch(
                            minWidth: 70.0,
                            cornerRadius: 10.0,
                            activeBgColor: Colors.cyan,
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            labels: ['YES', 'NO'],
                            icons: [
                              FontAwesomeIcons.check,
                              FontAwesomeIcons.times
                            ],
                            onToggle: (index3) {
                              print('switched to: $index3');
                              if (index3 == 1) {
                                // isWithLetters == true;
                                setState(() {
                                  numCase = false;
                                });
                              } else {
                                numCase = true;
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Special Charecters",
                            style: GoogleFonts.mcLaren(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          ToggleSwitch(
                            minWidth: 70.0,
                            cornerRadius: 10.0,
                            activeBgColor: Colors.cyan,
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            labels: ['YES', 'NO'],
                            icons: [
                              FontAwesomeIcons.check,
                              FontAwesomeIcons.times
                            ],
                            onToggle: (index4) {
                              print('switched to: $index4');
                              if (index4 == 1) {
                                // isWithLetters == true;
                                setState(() {
                                  specCase = false;
                                });
                              } else {
                                specCase = true;
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.exclamationTriangle,
                            size: 15,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Enable All the fields to create a strong Password",
                            style: GoogleFonts.mcLaren(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 290,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _generatedPassword = generatePassword(
                                upperCase, lowerCase, numCase, specCase, 10);
                          });
                        },
                        child: Center(
                            child: Text(
                          "Genrate Strong Password",
                          style: GoogleFonts.mcLaren(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          upperCase = true;
                          lowerCase = true;
                          numCase = true;
                          specCase = true;
                          _generatedPassword = "Your pswd will be here";
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(FontAwesomeIcons.redoAlt),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(_generatedPassword,
                                style: GoogleFonts.mcLaren(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500))),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_generatedPassword == "Your pswd will be here") {
                            Get.snackbar("Cannot Copy", "Clipboard is empty",
                                snackPosition: SnackPosition.BOTTOM);
                          } else {
                            Clipboard.setData(
                                    ClipboardData(text: _generatedPassword))
                                .then((value) {
                              Get.snackbar(
                                  "Copied!", "Text Copied to Clipboard",
                                  snackPosition: SnackPosition.BOTTOM);
                            });
                          }
                          setState(() {
                            _generatedPassword = "Your pswd will be here";
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(FontAwesomeIcons.copy),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_generatedPassword == "Your pswd will be here") {
                            Get.snackbar("Cannot Save!",
                                "Cannot Save empty password field",
                                snackPosition: SnackPosition.BOTTOM);
                          } else {
                            Get.defaultDialog(
                                title: "Give a Alias to this Pswd!",
                                titleStyle: GoogleFonts.mcLaren(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                                content: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Give a name to Your Password",
                                      focusColor: Colors.grey,
                                    ),
                                    onChanged: (value) {
                                      givenAlias = value;
                                    },
                                  ),
                                ),
                                textConfirm: "Save",
                                buttonColor: Colors.cyan,
                                textCancel: "Cancel",
                                onConfirm: () {
                                  userPswds.add(_generatedPassword.toString());
                                  print("Alias : $givenAlias");
                                  pswdFor.add(givenAlias.toString());
                                  Navigator.of(context, rootNavigator: true).pop();
                                  givenAlias != null ? Get.snackbar("Saved", "Your Password is saved Securly!",snackPosition: SnackPosition.BOTTOM) : Get.snackbar("Error", "Empty Password cannot be Saved",snackPosition: SnackPosition.BOTTOM);
                                },
                                onCancel: (){
                                  Navigator.of(context, rootNavigator: true).pop();
                                }
                                );
                                
                          }
                          // setState(() {
                          //   // pswdAliasControllar.text = givenAlias;
                          //   // pswdAliasControllar != null
                          //   // ?
                          //   // : Get.snackbar(
                          //   //     "Error!", "Pswd Alias Cannot be null");
                          // });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(FontAwesomeIcons.save),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 230,
                child: Image.asset("assets/password.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
