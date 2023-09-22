import 'package:flutter/material.dart';
import 'package:mini_project/constants/custom_colors.dart';

import '../../constants/search_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final List<Map<String, dynamic>> giftList = [
      {'image': 'assets/image1.png', 'color': Colors.red},
      {'image': 'assets/image2.png', 'color': Colors.blue},
      {'image': 'assets/image3.png', 'color': Color.fromARGB(255, 66, 56, 119)},
      {'image': 'assets/image3.png', 'color': Color.fromARGB(255, 80, 67, 255)},
      // Add more items as needed
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          color: CustomColors.dashboardBackgroud,
          child: Column(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  color: CustomColors.maineColor,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Hey, Jazib",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Manrope',
                                  color: CustomColors.btnBGColor,
                                ),
                              ),
                            ),
                            // SizedBox(width: screenWidth * 0.5),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Stack(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image(
                                      image: AssetImage(
                                          "assets/jpg_images/bag.png"),
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  Positioned(
                                    top: 2,
                                    right: 2,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: CustomColors.maineColor,
                                      child: CircleAvatar(
                                        child: Text(
                                          "3",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Manrope',
                                            fontWeight: FontWeight.w600,
                                            color: CustomColors.fontColor,
                                            height: 1,
                                          ),
                                        ),
                                        backgroundColor: Colors.amber,
                                        radius: 8,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      MySeacrBar(),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 5),
                  // color: CustomColors.maineColor,
                  height: screenHeight * 0.15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: giftList.length,
                    itemBuilder: (context, index) {
                      final item = giftList[index];
                      // final image = AssetImage(item['image']);
                      final color = item['color'];

                      return Container(
                        margin: EdgeInsets.all(6),
                        padding: EdgeInsets.all(10),
                        height: screenHeight * 0.1,
                        // width: screenWidth * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: color,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/jpg_images/giftImage.jpg',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            // SizedBox(width: 10),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Get',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w200,
                                      color: CustomColors.fontColor,
                                      height: 1.3,
                                    ),
                                  ),
                                  Text(
                                    '50% OFF',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.w700,
                                        color: CustomColors.fontColor,
                                        height: 1.3),
                                  ),
                                  Text(
                                    'On first 03 order',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.w200,
                                        color: CustomColors.fontColor,
                                        height: 1.3),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
