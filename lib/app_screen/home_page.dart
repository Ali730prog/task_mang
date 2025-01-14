import 'package:flutter/material.dart';
import 'package:task_manage_ment/app_const/app_color.dart';
import 'package:task_manage_ment/app_const/app_image.dart';
import 'package:task_manage_ment/common_widgets/bold_text.dart';
import 'package:task_manage_ment/common_widgets/light_text.dart';

// Screen with bottom navigation bar 
class MainScreen extends StatefulWidget {

  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> screens = [
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  int active_screen=0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        BottomNavigationBarItem(icon: Container(height: 54,width: 54,child: Icon(Icons.add)), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded), label: "Calendar"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notification")
      ],selectedItemColor: AppColor.yellowFED36A,
      unselectedItemColor: AppColor.whiteFFFFFF,
     
      onTap: (index){

        setState(() {
          active_screen=index;
        });
      }
      ,),
      body: screens[active_screen],
    );
  }
}



// Homepage start code 

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(22),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LightText(
                  text: "Welcome Back!",
                  textcolor: AppColor.yellowFED36A,
                ),
                BoldText(
                  text: "Fazil Laghari",
                ),
              ],
            ),
            Image.asset(
              AppImages.avatar_1,
            )
          ],
        ),
      ),
    );
  }
}

// HomePage end 