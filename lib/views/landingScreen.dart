import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playsport_app/views/mainBottomBar.dart';
import 'package:playsport_app/widgets/buttonWidget.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        top: false,
        // bottom: false,
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/landing.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              // width: width,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'PLAY everywhere! \nBy anyone! \nWith everybody!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.05),
                  ButtonWidget(
                    buttonText: 'Start PLAYing',
                    onTap: () {
                      Get.off(MainBottombar());
                    },
                    width: 100,
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
