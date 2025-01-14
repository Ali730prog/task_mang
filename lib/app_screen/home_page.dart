import 'package:flutter/material.dart';
import 'package:task_manage_ment/app_const/app_color.dart';
import 'package:task_manage_ment/app_const/app_image.dart';
import 'package:task_manage_ment/common_widgets/bold_text.dart';
import 'package:task_manage_ment/common_widgets/common_text_field.dart';
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
    HomePage(),
    HomePage(),
  ];

  int active_screen = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColor.blue212832,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(
              icon: Container(
                  height: 54,
                  width: 54,
                  color: AppColor.yellowFED36A,
                  child: Icon(Icons.add)),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_rounded), label: "Calendar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification")
        ],
        selectedItemColor: AppColor.yellowFED36A,
        unselectedItemColor: AppColor.whiteFFFFFF,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.blue263238,
        onTap: (index) {
          setState(() {
            active_screen = index;
          });
        },
      ),
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

    List projects = [
      {
        "detail": "project1",
        "progress": 21,
        "teammembers": [
          AppImages.avatar_1,
          AppImages.avatar_2,
          AppImages.avatar_3,
          AppImages.avatar_4
        ]
      },
      {
        "detail": "project1",
        "progress": 21,
        "teammembers": [
          AppImages.avatar_1,
          AppImages.avatar_2,
          AppImages.avatar_3,
          AppImages.avatar_4
        ]
      },
      {
        "detail": "project1",
        "progress": 21,
        "teammembers": [
          AppImages.avatar_1,
          AppImages.avatar_2,
          AppImages.avatar_3,
          AppImages.avatar_4
        ]
      },
      {
        "detail": "project1",
        "progress": 21,
        "teammembers": [
          AppImages.avatar_1,
          AppImages.avatar_2,
          AppImages.avatar_3,
          AppImages.avatar_4
        ]
      },      {
        "detail": "project1",
        "progress": 21,
        "teammembers": [
          AppImages.avatar_1,
          AppImages.avatar_2,
          AppImages.avatar_3,
          AppImages.avatar_4
        ]
      },      {
        "detail": "project1",
        "progress": 21,
        "teammembers": [
          AppImages.avatar_1,
          AppImages.avatar_2,
          AppImages.avatar_3,
          AppImages.avatar_4
        ]
      },
            {
        "detail": "project1",
        "progress": 21,
        "teammembers": [
          AppImages.avatar_1,
          AppImages.avatar_2,
          AppImages.avatar_3,
          AppImages.avatar_4
        ]
      },
    ];
   
    return Scaffold(
      backgroundColor: AppColor.blue212832,
      body: Padding(
        padding: EdgeInsets.all(22),
        child: Container(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                  Column(
                    children: [
                      Image.asset(
                        AppImages.avatar_1,
                        height: 48,
                      ),
                    ],
                  )
                ],
              ),
              Row(mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CommonTextField(
                      hintText: "Seach tasks",
                      prefixImage: AppImages.search_img,
                    ),
                  ),
                  Container(
                    height: 58,
                    color: AppColor.yellowFED36A,
                    child: Image.asset(AppImages.filter_icon),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoldText(
                        text: "Completed Tasks",
                        textsize: 20,
                      ),
                      LightText(
                        text: "See all",
                        textsize: 16,
                        textcolor: AppColor.yellowFED36A,
                      )
                    ],
                  )),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                 itemExtent: 200,
                      itemBuilder: (context, index) {
                        return ProjectSquareCard(
                            projectdetails: projects[index]['detail'],
                            teammembers: projects[index]['teammembers'],
                            progress: projects[index]['progress']);
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// HomePage end

class ProjectSquareCard extends StatelessWidget {
  final String projectdetails;
  final List teammembers;
  final double progress;
  final Color? cardcolor;
  final Color? textcolor;

  const ProjectSquareCard(
      {super.key,
      required this.projectdetails,
      required this.teammembers,
      required this.progress,
      this.cardcolor = AppColor.blue455A64,
      this.textcolor = AppColor.whiteFFFFFF});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 175,
      
      width: 183,
      color: cardcolor, 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BoldText(
            text: projectdetails,
            textcolor: textcolor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LightText(
                text: "Team members",
                textcolor: textcolor,
              ),
              Row(
                children: [
                  Image.asset(
                    AppImages.avatar_1,
                    height: 20,
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LightText(
                    text: "Completed",
                    textcolor: textcolor,
                  ),
                  LightText(
                    text: "$progress %",
                    textcolor: textcolor,
                  ),
                ],
              ),
              SizedBox(
                  height: 10,
                  child: LinearProgressIndicator(
                    color: AppColor.yellowFED36A,
                    minHeight: 5,
                    borderRadius: BorderRadius.circular(10),
                    value: 20,
                    valueColor: AlwaysStoppedAnimation(AppColor.black000000),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
