import 'package:flutter/material.dart';
import 'package:mini_project/constants/custom_colors.dart';

class MySeacrBar extends StatefulWidget {
  @override
  _MySeacrBarState createState() => _MySeacrBarState();
}

class _MySeacrBarState extends State<MySeacrBar> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          isFocused = hasFocus;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: CustomColors.seachBarBG,
          borderRadius: BorderRadius.circular(50),
          boxShadow: isFocused
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ]
              : [],
        ),
        child: TextField(
          style: TextStyle(
            color: CustomColors.fontColor,
          ),
          decoration: InputDecoration(
            iconColor: CustomColors.fontColor,
            hintText: "Search Products or store",
            hintStyle: TextStyle(
              height: 2,
              color: CustomColors.seachBarText,
              // fontSize: 12,
            ),
            border: InputBorder.none,
            icon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
