import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:playsport_app/controllers/baseController.dart';
import 'package:playsport_app/utils/global.dart';
import 'package:playsport_app/views/registrationPage.dart';
import 'package:playsport_app/views/videoPage.dart';

import 'homePage.dart';

class MainBottombar extends StatelessWidget {
  final BaseController baseController = Get.put(BaseController());
  // final ProductController homeController = Get.put(ProductController());

  final String imageUrl =
      'https://media-exp1.licdn.com/dms/image/C4E03AQG269Ksa_8fiw/profile-displayphoto-shrink_400_400/0/1516795586611?e=1613001600&v=beta&t=-YexhwV4hIDU4BNrfgVJZMU0nE9BTfzBam56uu3RxxY';
  final currentTab = [
    HomePage(),
    VideoPage(),
    RegistrationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            // leading: SizedBox(),
            title: Image.asset(
              "assets/play_logo.png",
              height: 50,
            ),
            centerTitle: true,
            elevation: 5, // make it 0 in order to match with website
            backgroundColor: ThemeConstants.grayBackgroundColor,
          ),
          // appBar: AppBar(
          //   // gradient: GlobalConstants.appBarGradient,

          //   // title: Column(
          //   //   mainAxisAlignment: MainAxisAlignment.center,
          //   //   children: <Widget>[
          //   //     Obx(() =>Text(
          //   //       baseController.currentAddress.value,
          //   //       // style: Theme.of(context).textTheme.bodyText2
          //   //       style:
          //   //           TextStyle(color: Colors.white, fontSize: 15),
          //   //     )),
          //   //   ],
          //   // ),
          //   centerTitle: true,

          //   title: GestureDetector(
          //       onTap: () {
          //         Get.to(LocationPage());
          //       },
          //       child:
          //           // Text(
          //           //   "Deliver to ${baseController.currentAddress.value} ",

          //           //   // style: Theme.of(context).textTheme.bodyText2
          //           //   style: TextStyle(color: Colors.white, fontSize: 15),
          //           // ),
          //           Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           RichText(
          //             text: TextSpan(
          //               // text: 'Hello ',
          //               // style: DefaultTextStyle.of(context).style,
          //               children: <TextSpan>[
          //                 TextSpan(
          //                     text: 'Deliver to ',
          //                     style: TextStyle(
          //                         color: ThemeConstants.primaryTextColor,
          //                         fontSize: 20)),
          //                 TextSpan(
          //                   text: "Home",
          //                   style: TextStyle(
          //                       fontWeight: FontWeight.w500,
          //                       fontSize: 20,
          //                       color: Colors.yellow),
          //                 ),
          //               ],
          //             ),
          //           ),
          //           Icon(Icons.arrow_drop_down)
          //         ],
          //       )),

          //   //       DropdownButtonHideUnderline(
          //   //     child:
          //   //         // DropdownButton(
          //   //         // focusColor: Colors.red,
          //   //         // dropdownColor: Colors.blueGrey,
          //   //         // // isExpanded: true,
          //   //         // iconEnabledColor: Colors.blue,
          //   //         // style: TextStyle(
          //   //         //     color: ThemeConstants.secondaryTextColor,
          //   //         //     fontWeight: FontWeight.w500,
          //   //         //     fontSize: 15),
          //   //         CustomDropdownButton(
          //   //           hint: Text("Select Address"),
          //   //           // style: TextStyle(
          //   //           //   color: ThemeConstants.secondaryTextColor,
          //   //           //   fontWeight: FontWeight.w500,
          //   //           //   fontSize: 15),
          //   //             value: homeController.selectedItem.value,
          //   //             items: homeController.dropdownMenuItems,
          //   //             onChanged: (value) {
          //   //               homeController.selectedItem.value = value;
          //   //             }),
          //   //   ),
          //   // ),
          //   // centerTitle: true,
          //   // brightness: Brightness.light,
          //   actions: <Widget>[
          //     Container(
          //       width: 60.0,
          //       child: IconButton(
          //         icon: ClipOval(
          //           child: Align(
          //             heightFactor: 1,
          //             widthFactor: 1,
          //             child: Image.network(imageUrl),
          //           ),
          //         ),
          //         onPressed: () {
          //           Get.to(ProfilePage());
          //         },
          //       ),
          //     ),
          //   ],
          // ),
          body: SafeArea(child: currentTab[baseController.currentIndex]),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 5,
            backgroundColor: ThemeConstants.grayBackgroundColor,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey[400],
            currentIndex: baseController.currentIndex,
            onTap: (index) {
              baseController.currentIndex = index;
            },
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.event_available_outlined),
                label: 'Schedule',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.live_tv),
                label: 'Video',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Registration',
              ),
            ],
          ),
        ));
  }
}
