import 'package:flutter/material.dart';
import 'package:mini_project/constants/custom_colors.dart';

class homeContent extends StatelessWidget {
  final screenHeight;
  final screenWidth;
  final mainText;
  final mainTextImg;
  final subMainText;
  final tabLineClr;
  final subTabLineClr;
  final tabLineWdt;
  final subTabLineWdt;
  final mainImage;
  final btnText;
  final navigateRouteScreen;
  const homeContent(
      {super.key,
      this.screenHeight,
      this.screenWidth,
      this.mainText,
      this.mainTextImg,
      this.subMainText,
      this.tabLineClr,
      required double this.tabLineWdt,
      this.mainImage,
      this.btnText,
      this.subTabLineClr,
      required double this.subTabLineWdt,
      this.navigateRouteScreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      width: screenWidth,
      color: CustomColors.maineColor,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: screenWidth,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: screenWidth,
                            child: Text(
                              mainText,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w700,
                                  color: CustomColors.fontColor,
                                  height: 1.3),
                            ),
                          ),
                          Positioned(
                            bottom: 12,
                            left: 80,
                            child: Container(
                              child: Image(
                                width: 20,
                                image: AssetImage(mainTextImg),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              width: screenWidth,
              child: Text(
                subMainText,
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
              // color: Colors.black12,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: tabLineClr, spreadRadius: 2),
                      ],
                    ),
                    width: tabLineWdt,
                    height: 1,
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: subTabLineClr, spreadRadius: 2),
                      ],
                    ),
                    width: subTabLineWdt,
                    height: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: screenWidth,
                child: Image(
                  image: AssetImage(mainImage),
                ),
              ),
            ),
            Container(
              height: 50,
              width: screenWidth,
              // color: Colors.amber
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/home2');
                  Navigator.pushNamed(context, navigateRouteScreen);
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
    );
  }
}
