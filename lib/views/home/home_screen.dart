import 'package:flutter/material.dart';
import 'package:mini_project/controller/HomeController.dart';

import '/constants/custom_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          color: CustomColors.maineColor,
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenHeight * 0.27,
                  width: screenWidth,
                  child: SizedBox(
                    child: Container(
                      child: Text(
                        "Your holiday \nshopping \ndelivered to Screen \none",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          color: CustomColors.fontColor,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.10,
                  width: screenWidth,
                  child: Text(
                    "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen One",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500,
                        color: CustomColors.subfontColor,
                        height: 1.2),
                  ),
                ),
                Container(
                  height: 30,
                  width: screenWidth,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: CustomColors.tabLineColor,
                                spreadRadius: 2),
                          ],
                        ),
                        width: 40,
                        height: 1,
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: CustomColors.subTabLineColor,
                                spreadRadius: 2),
                          ],
                        ),
                        width: 25,
                        height: 1,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: screenWidth,
                    child: Image(
                      image: AssetImage("assets/jpg_images/Image_Icon.jpg"),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: screenWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home2');
                      // Navigator.pushNamed(context, navigateRouteScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 5, // Elevation
                      padding: EdgeInsets.all(15), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                        // You can also use other shape options like BeveledRectangleBorder, StadiumBorder, etc.
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                              color: CustomColors.btnTextColor,
                              height: 1.3),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          size: 24.0,
                          color: CustomColors.btnTextColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
