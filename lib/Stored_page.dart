import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strong_pass/Data.dart';

// bool pswdHidden = true;
class StoredPswd extends StatefulWidget {
  @override
  _StoredPswdState createState() => _StoredPswdState();
}

class _StoredPswdState extends State<StoredPswd> {
  int selectedIndex;
  int index;

  @override
  Widget build(BuildContext context) {
    // bool isSelected;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Your Passwords",
          style: GoogleFonts.mcLaren(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        color: Colors.black12,
        child: ListView.builder(
          itemCount: userPswds.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          index == selectedIndex
                              ? Text(userPswds[index])
                              : Text('***********'),
                          
                          // Text(userPswds[index]),
                          Text(pswdFor[index]),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  if(pswdHidden==true){
                                    selectedIndex = index;
                                    pswdHidden = false;
                                  }
                                  else{
                                    selectedIndex = null;
                                    pswdHidden = true;
                                  }
                                });
                              },
                              child: setIcon(index, selectedIndex))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

setIcon(int index, int selectedIndex) {
  if(index==selectedIndex){
    return Icon(FontAwesomeIcons.eye);
  } else {
    return Icon(FontAwesomeIcons.eyeSlash);
  }
}