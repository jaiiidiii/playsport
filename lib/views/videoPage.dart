import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playsport_app/controllers/baseController.dart';
import 'package:playsport_app/utils/global.dart';
import 'package:playsport_app/widgets/buttonWidget.dart';
import '../utils/global.dart';

class VideoPage extends StatelessWidget {
  final BaseController baseController = Get.find<BaseController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[300],
        onPressed: () {
          baseController.currentIndex = 2;
        },
        child: Icon(
          Icons.add_chart,
          color: Colors.orange,
        ),
      ),
      backgroundColor: ThemeConstants.grayBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Video Courses',
                  style: TextStyle(
                      fontSize: 22, color: ThemeConstants.secondaryTextColor),
                ),
              ),
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (ctx, int) {
                  return buildCardTile(
                      title: 'Baseball',
                      subtitle: 'JCC Baseball',
                      sideColor: Colors.green,
                      buttonText: 'Book');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildCardTile(
      {String title, String subtitle, Color sideColor, String buttonText}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 70,
          color: ThemeConstants.graySolidColor,
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.blue[300],
                width: 8,
                height: 70,
                child: SizedBox(),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Root To Raise'),
                  Text(subtitle,
                      style:
                          TextStyle(color: ThemeConstants.secondaryTextColor))
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('33',
                        style: TextStyle(
                            color: ThemeConstants.secondaryTextColor)),
                    Text('min',
                        style: TextStyle(
                            color: ThemeConstants.secondaryTextColor)),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'A 33 Minute Practice to ground',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(color: ThemeConstants.secondaryTextColor),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonWidget(
                    buttonText: 'Yoga',
                    highlighlightColor: Colors.pink,
                    onTap: () {
                      // Get.to(MainBottombar());
                    },
                    height: 20,
                  ),
                  ButtonWidget(
                    buttonText: 'All',
                    highlighlightColor: Colors.greenAccent[200],
                    onTap: () {
                      // Get.to(MainBottombar());
                    },
                    height: 20,
                  ),
                ],
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
