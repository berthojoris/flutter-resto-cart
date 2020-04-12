import 'package:flutter/material.dart';
import 'package:flutterresturant/widgets/backmenu.dart';
import 'package:flutterresturant/widgets/breakfast.dart';
import 'package:flutterresturant/widgets/lunch.dart';
import 'package:flutterresturant/screens/morefood.dart';
import 'package:flutterresturant/transition/scale.dart';
import 'package:flutterresturant/utils/config.dart';
import 'package:flutterresturant/widgets/special.dart';

class HomeTabXD extends StatefulWidget {
  @override
  State createState() {
    return _HomeTabXDState();
  }
}

class _HomeTabXDState extends State<HomeTabXD> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Appbar
            SizedBox(
              height: SizeConfig.safeBlockVertical * 6.4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal * 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BackMenuXD(),
                  Icon(
                    Icons.person_outline,
                    color: Colors.grey[800],
                  )
                ],
              ),
            ),

            SizedBox(height: SizeConfig.safeBlockVertical * 4),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal * 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Delivery',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: SizeConfig.safeBlockHorizontal * 7.2,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4,
                        ),
                      ),
                      Text(
                        'Healthy Food',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: SizeConfig.safeBlockHorizontal * 7.2,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        SizeConfig.safeBlockVertical,
                      ),
                    ),
                    padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 2),
                    child: Icon(
                      Icons.search,
                      size: SizeConfig.safeBlockHorizontal * 5.4,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // ========================================= MENU =========================================
        Padding(
          padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 26),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding:
                  EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // ========================================= BIG MENU =========================================
                  Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 7),
                    child: Text(
                      'Today\'s Special',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: SizeConfig.safeBlockHorizontal * 3.3,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, ScaleRoute(page: MoreFoodXD(0)));
                    },
                    child: SpecialMenuXD(),
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical * 4),
                  // ========================================= SMALL MENU =========================================
                  Padding(
                    padding: EdgeInsets.only(
                      right: SizeConfig.safeBlockHorizontal * 4.4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Today\'s Breakfast',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: SizeConfig.safeBlockHorizontal * 3.3,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context, ScaleRoute(page: MoreFoodXD(1)));
                          },
                          child: Text(
                            'SHOW MORE',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: SizeConfig.safeBlockHorizontal * 3,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.2,
                              color: Colors.orange[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, ScaleRoute(page: MoreFoodXD(1)));
                    },
                    child: BreakfastMenuXD(),
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical),
                  Padding(
                    padding: EdgeInsets.only(
                      right: SizeConfig.safeBlockHorizontal * 4.4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Today\'s Lunch',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: SizeConfig.safeBlockHorizontal * 3.3,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context, ScaleRoute(page: MoreFoodXD(1)));
                          },
                          child: Text(
                            'SHOW MORE',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: SizeConfig.safeBlockHorizontal * 3,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.2,
                              color: Colors.orange[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, ScaleRoute(page: MoreFoodXD(1)));
                    },
                    child: LunchMenuXD(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
