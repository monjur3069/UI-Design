import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_design/pages/search_page.dart';

import '../Colors/custom_colors.dart';

class MyWallet extends StatefulWidget {
  static const String routeName = '/mywallet';

  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
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
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: ListView(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SearchPage.routeName);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25,
                      ))),
              Row(
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
              SizedBox(
                height: 30.h,
              ),
              const Text(
                'My Wallet',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.h,
              ),
              //Balance Card
              Container(
                height: 210.h,
                width: 340.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: MyColor.color1,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Balance',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('UC 1000',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                          Container(
                            width: 83.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('U',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 12,color: MyColor.color1,),),
                                Text('podesta',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 12,color: Color(0xFF006A4E),),),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('John Doe',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('0128 **** **** 8956',style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                                  SizedBox(width: 10.w,),
                                  Icon(Icons.visibility_off,color: Colors.white,size: 12,)
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Text('12/23',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11.sp,color: Colors.white,),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColor.color1,
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/cash_out.png',width: 15.52.w,height: 18.h,),
                        SizedBox(width: 5.w,),
                        Text("Cash Out",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColor.color1),)
                      ],
                    ),
                  ),
                  Container(
                    height: 45.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColor.color1,
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/update_info.png',width: 15.52.w,height: 18.h,),
                        SizedBox(width: 5.w,),
                        Text("Update info",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: MyColor.color1),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Transactions',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                  Image.asset('images/logo1.PNG',height: 16.h,width: 16.w,)
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 80.h,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: MyColor.color1
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('images/logo2.PNG',),
                    backgroundColor: Colors.white,
                  ),
                  title: Text('Cash out via Bkash',style: TextStyle(fontSize: 16.sp,color: Colors.white),),
                  subtitle: Text('At 6.00 PM - 03 January 2022',style: TextStyle(fontSize: 11.sp,color: Colors.white),),
                  trailing: Text('-1500 BDT',style: TextStyle(fontSize: 12.sp,color: Colors.white),),
                ),
              ),
              SizedBox(height: 10.h,),
              Container(
                height: 80.h,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: MyColor.color1
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('images/logo2.PNG',),
                    backgroundColor: Colors.white,
                  ),
                  title: Text('Cash out via Nogod',style: TextStyle(fontSize: 16.sp,color: Colors.white),),
                  subtitle: Text('At 6.00 PM - 03 January 2022',style: TextStyle(fontSize: 11.sp,color: Colors.white),),
                  trailing: Text('-1300 BDT',style: TextStyle(fontSize: 12.sp,color: Colors.white),),
                ),
              ),
              SizedBox(height: 10.h,),
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
