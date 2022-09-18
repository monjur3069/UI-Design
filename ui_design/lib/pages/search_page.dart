import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Colors/custom_colors.dart';
import 'my_wallet.dart';

class SearchPage extends StatefulWidget {
  static const String routeName = '/second';

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searchController = TextEditingController();
  @override
  int _selectedIndex = 0;
  int currentPos = 0;

  List<String> listPaths = [
    "images/background.png",
    "images/background.png",
    "images/background.png",
    "images/background.png",
    "images/background.png",
    "images/background.png",
  ];

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Wallet',
      style: optionStyle,
    ),
    Text(
      'Index 2: Special',
      style: optionStyle,
    ),
    Text(
      'Index 3: Menu',
      style: optionStyle,
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      size: 25,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyWallet.routeName);
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 25,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){},
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(22.5),
                        child: Image.asset(
                          'images/notificaion.png',
                          fit: BoxFit.cover,
                          height: 53.h,
                          width: 45.w,
                        )),
                  ),
                  Container(
                    width: 223.w,
                    alignment: Alignment.center,
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.w, color: MyColor.color1),
                              borderRadius: BorderRadius.circular(50)),
                          hintText: 'search with keywords...',
                          hintStyle: TextStyle(fontSize: 12.sp),
                          prefixIcon: Icon(
                            Icons.search,
                            color: MyColor.color1,
                          )),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(22.5),
                        child: Image.asset(
                          'images/menu.png',
                          fit: BoxFit.cover,
                          height: 53.h,
                          width: 45.w,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: const Text(
                'Results for CSD',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CarouselSlider.builder(
              itemCount: listPaths.length,
              options: CarouselOptions(
                  height: 400.h,
                  viewportFraction: 0.8,
                  aspectRatio: 16 / 9,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      var currentPos = index;
                    });
                  }),
              itemBuilder: (context, index, realIndex) {
                return Stack(
                  children: [
                    MyImageView(listPaths[index]),
                    Positioned(
                      top: 200,
                      left: 20,
                      right: 0,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                //textAlign: Alignment.,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Image.asset(
                                'images/img_9.png',
                                height: 25.h,
                                width: 25.w,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'Problem solver | Loreum dollor | CSD',
                            style: TextStyle(fontSize: 16.sp, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'Work at: Bangladesh Programming Ltd',
                            style: TextStyle(fontSize: 11.sp, color: Colors.white),
                          ),
                          Text(
                            'Studied from: Bangladesh University of Science',
                            style: TextStyle(fontSize: 11.sp, color: Colors.white),
                          ),
                          Text(
                            'From: Dhaka, Bangladesh',
                            style: TextStyle(fontSize: 11.sp, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: InkWell(
                onTap: (){},
                child: Container(
                  height: 60.h,
                  width: 340.w,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [MyColor.color1, MyColor.color1, MyColor.color1]),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/img_4.png',
                        height: 20.h,
                        width: 25.w,
                      ),
                      SizedBox(width: 5.w,),
                      Text(
                        'Follow John',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Container(
                height: 74.h,
                width: 340.w,
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        child: Center(
                            child: CircleAvatar(
                              radius: 30.r,
                              backgroundColor: MyColor.color1,
                              child: Icon(Icons.home,color: Colors.white,size: 45.sp,),
                            )
                        )),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Center(
                        child: Container(
                          height: 55.h,
                          width: 256.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(onTap:(){},child: Image.asset('images/tabbar_left.png',height: 40.h,width: 40.w,)),
                              InkWell(onTap:(){},child: Image.asset('images/tabbar_right.png',height: 40.h,width: 40.w,)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:20.h,)
          ],
        ),
      ),
    );
  }
}

class MyImageView extends StatelessWidget {
  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return Container(child: Image.asset(imgPath));
  }
}
