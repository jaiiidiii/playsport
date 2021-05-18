import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {@required this.buttonText,
      @required this.onTap,
      this.width,
      this.height,
      this.highlighlightColor});

  final String buttonText;
  final Function() onTap;
  final double width;
  final double height;
  final Color highlighlightColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: width != null ? width : double.infinity,
        height: height,
        decoration: new BoxDecoration(
            border: Border.all(
              color: highlighlightColor != null
                  ? Colors.transparent
                  : Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            color: highlighlightColor
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //     // color: Color(0xFFfbab66),
            //     color: Color(0xFF13D6EA),
            //   ),
            // BoxShadow(
            //   // color: Color(0xFFf7418c),
            //   color: Color(0xFFf82538),
            // ),
            // ],
            // gradient: new LinearGradient(
            //     // colors: [Colors.deepPurple, Colors.red],
            //     colors: [
            //       // Color(0xFFEAE3B3),
            //       Color(0xFFBAA304),
            //       Color(0xFFCEBE4F),
            //     ],
            //     // colors: [Color(0xFFf82538), Color(0xFF13D6EA)],
            //     begin: const FractionalOffset(0.1, 0.1),
            //     end: const FractionalOffset(0.7, 0.7),
            //     stops: [0.2, 1.0],
            //     tileMode: TileMode.clamp),
            ),
        child: MaterialButton(
          highlightColor: highlighlightColor ?? Colors.transparent,
          // splashColor: Color(0xFFf7418c),
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              // fontSize: 15.0,
            ),
          ),
          onPressed: onTap,
          // onPressed: () {
          //   // Get.offAll(MainBottombar());
          //   Get.to(StoreCategoriesPage());
          // }),
        ));
  }
}
