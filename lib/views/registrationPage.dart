import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playsport_app/controllers/baseController.dart';
import 'package:playsport_app/widgets/buttonWidget.dart';
import '../utils/global.dart';

class RegistrationPage extends StatelessWidget {
  final BaseController baseController = Get.find<BaseController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: ThemeConstants.grayBackgroundColor,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Stack(
                        children: <Widget>[
                          getImageWidget(),
                          Positioned(
                              right: 0,
                              bottom: 0,
                              child: InkWell(
                                  onTap: () {
                                    // photoDialog(context);
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18.0),
                                    child: Container(
                                        color: Colors.grey,
                                        height: 30,
                                        width: 30,
                                        child: Icon(
                                          Icons.camera_alt,
                                          size: 15,
                                          color: Colors.white,
                                        )),
                                  ))),
                        ],
                      ),
                    ),
                  ),
                  TextFormField(
                      controller: baseController.nameController,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        prefixIcon: Icon(Icons.account_circle_outlined),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      controller: baseController.emailController,
                      decoration: InputDecoration(
                        hintText: 'E-Mail',
                        prefixIcon: Icon(Icons.alternate_email),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      controller: baseController.passwordController,
                      obscureText: baseController.isPasswordObscure.value,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                            onTap: baseController.isPasswordObscure.toggle,
                            child: Icon(
                                baseController.isPasswordObscure.value == false
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  CheckboxListTile(
                    title: RichText(
                      text: TextSpan(
                        text: 'I read and agreed to the ',
                        style:
                            TextStyle(color: ThemeConstants.secondaryTextColor),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms and Conditions',
                              style: TextStyle(color: Colors.orange)),
                        ],
                      ),
                    ),
                    value: baseController.termsCheckbox.value,
                    activeColor: Colors.orange,
                    onChanged: (newValue) {
                      baseController.termsCheckbox(newValue);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    buttonText: 'Sign Up',
                    highlighlightColor: Colors.orange,
                    onTap: () {
                      // Get.to(MainBottombar());
                    },
                    width: 150,
                    // height: ,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style:
                          TextStyle(color: ThemeConstants.secondaryTextColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign in',
                            style: TextStyle(color: Colors.orange)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Image.asset("assets/facebook_logo.png"),
                          onPressed: () {}),
                      IconButton(
                          icon: Image.asset("assets/google_logo.png"),
                          onPressed: () {}),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget getImageWidget() {
    // if (base64Str != null && base64Str.isNotEmpty) {
    //   return CircleAvatar(
    //     backgroundColor: ThemeConstants.primaryColor,
    //     maxRadius: 36.0,
    //     minRadius: 36.0,
    //     backgroundImage: MemoryImage(base64Decode(base64Str), scale: 1.0),
    //   );
    // } else {
    return CircleAvatar(
      backgroundColor: ThemeConstants.grayBackgroundColor,
      radius: 35.0,
      // minRadius: 30.0,
      backgroundImage: AssetImage("assets/ic-default-profile.png"),
    );
    // }
  }
}
