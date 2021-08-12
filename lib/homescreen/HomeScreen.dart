import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'searchbar.dart';
import 'colors.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _box(String locationofimage){
    return Stack(
      children: [

        Container(
        child: Image.asset(
           locationofimage,

        ),
      ),
        Container(
          child: Center(child: Text('New')),
          decoration: BoxDecoration(

           //shape: BoxShape.circle,
            borderRadius:BorderRadius.circular(20.0),
            color: Colors.white12,
            //borderRadius: BorderRadius.circular(5),
          ),
          height: 25,
          width: 50,
         // color: Colors.brown,
        ),
    ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: AppBottomNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
          alignment: AlignmentDirectional.bottomStart,
            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text(
                      //       'Everikart Store',
                      //       style: TextStyle(fontSize: 28.0, height: 1),
                      //     ),
                      //     // Cart(numberOfItemsInCart: Fake.numberOfItemsInCart),
                      //   ],
                      // ),
                      // Text(
                      //   'Get everything',
                      //   style: TextStyle(
                      //       fontSize: 15.0, height: 2, color: Colors.black38),
                      // ),
                      SearchBar(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Categories',
                              style: TextStyle(fontSize: 15.0, height: 1),
                            ),
                            Container(
                              child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Text(
                                    'View all',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      height: 1,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset.zero,
                              blurRadius: 15.0)
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                //height: 30,
                                //width: 30,
                                child: SvgPicture.asset(
                                    'assets/icons/men-suit.svg'
                                  //color: primaryColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Men\'s',
                              style: TextStyle(
                                fontSize: 13.0,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset.zero,
                              blurRadius: 15.0)
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                //height: 30,
                                //width: 30,
                                child: Image.asset(
                                  'assets/icons/women.png',
                                  //color: primaryColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Women\'s',
                              style: TextStyle(
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: 90,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset.zero,
                              blurRadius: 15.0)
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                //height: 30,
                                //width: 30,
                                child: Image.asset(
                                  'assets/icons/women.png',
                                  //color: primaryColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Men\'s',
                              style: TextStyle(
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    child: Image.asset(
                      'assets/images/im1.png',
                      width: MediaQuery.of(context).size.height,
                      height: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _box('assets/images/s1.png'),
                        SizedBox(
                          width: 10,
                        ),
                        _box('assets/images/s2.png'),
                        SizedBox(
                          width: 10,
                        ),
                        _box('assets/images/s3.png')
                      ],
                    ),
                  ),
                ),



              ],

            ),
              Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20.0),
                  color: Colors.grey,
                ),

                child: Row(

                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.grey,
                      height: 60,
                      width: 60,
                      child: Icon(Icons.home,
                      size: 50,),

                    ),

                    Container(
                      color: Colors.grey,
                      height: 60,
                      width: 60,
                      child: Icon(Icons.shopping_bag,
                        size: 50,),

                    ),

                    Container(
                      color: Colors.grey,
                      height: 60,
                      width: 60,
                      child: Icon(Icons.add_shopping_cart,
                        size: 50,),

                    ),

                    Container(
                      color: Colors.grey,
                      height: 60,
                      width: 60,
                      child: Icon(Icons.favorite,
                        size: 50,),

                    ),

                    Container(
                      color: Colors.grey,
                      height: 60,
                      width: 60,
                      child: Icon(Icons.account_box,
                        size: 50,),

                    ),

                  ],
                ),
              )
          ],
          ),
        ),
      ),
    );
  }
}
