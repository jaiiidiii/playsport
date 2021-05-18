import 'package:flutter/material.dart';

class CustomAvatars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 40,
      // color: Colors.white,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/a-/AOh14GjGG1mLPJ2opacvtSyTqsp3Mmh5Qc2EJC_OplZCOTU'), // Provide your custom image
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/ogw/ADGmqu8S6lepTUr-0Y8fF6sqB-dHK5BUK9dK1dvHa3XEjQ'), // Provide your custom image

                // 'https://bramdejager.files.wordpress.com/2019/05/bramdejager-600x600.png'), // Provide your custom image

                // child: Image.asset('assets\image'), // Provide your custom image
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.red,
                // child: Image.asset('assets\image'), // Provide your custom image
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/a-/AOh14GjGG1mLPJ2opacvtSyTqsp3Mmh5Qc2EJC_OplZCOTU'), // Provide your custom image
              ),
            ),
          ),
        ],
      ),
    );
  }
}
