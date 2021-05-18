import 'package:flutter/material.dart';
import 'package:playsport_app/widgets/buttonWidget.dart';
import '../utils/global.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConstants.grayBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '14/05/2021',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) => buildCard(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saturday',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '15/05/2021',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (ctx, int) {
                  // return Card(

                  //   child: ListTile(
                  //     tileColor: Colors.black54,

                  //       title: Text('Baseball'),
                  //       subtitle: Text('JCC Baseball')),
                  // );
                  return buildCardTile(
                      title: 'Baseball',
                      subtitle: 'JCC Baseball',
                      sideColor: Colors.green,
                      buttonText: 'Book');
                },
              ),
              // Card(
              //   child: ListTile(
              //       title: Text('Motivation $int'),
              //       subtitle: Text('this is a description of the motivation')),
              // ),
              // Card(
              //   child: ListTile(
              //       title: Text('Motivation $int'),
              //       subtitle: Text('this is a description of the motivation')),
              // ),
              // Card(
              //   child: ListTile(
              //       title: Text('Motivation $int'),
              //       subtitle: Text('this is a description of the motivation')),
              // ),
              // Card(
              //   child: ListTile(
              //       title: Text('Motivation $int'),
              //       subtitle: Text('this is a description of the motivation')),
              // ),
              // Card(
              //   child: ListTile(
              //       title: Text('Motivation $int'),
              //       subtitle: Text('this is a description of the motivation')),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard() {
    return Card(
      elevation: 0,
      color: Color(0xFF393948), //Colors.transparent,
      child: Stack(
        // overflow: Overflow.visible,
        // clipBehavior: Clip.hardEdge,
        children: [
          Container(
              width: 130,
              height: 177,
              decoration: new BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text('Baseball'),
                  ],
                ),
              )),
          Positioned(
            bottom: 0,
            left: 20,
            child: ButtonWidget(
              buttonText: "book",
              highlighlightColor: Colors.orange,
              onTap: () {
                // Get.to(MainBottombar());
              },
              // width: 100,
              height: 35,
            ),
          ),
        ],
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
          color: Color(0xFF31323f), //Color(0xFF343a40),
          child: Row(
            children: <Widget>[
              Container(
                color: sideColor,
                width: 8,
                height: 70,
                child: SizedBox(),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title),
                  Text(subtitle, style: TextStyle(color: Colors.grey))
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('06:00'),
                    Text('07:00'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('8/10'),
                    CustomAvatars(),
                    // Text('07:00'),
                  ],
                ),
              ),
              ButtonWidget(
                buttonText: buttonText,
                highlighlightColor: Colors.orange,
                onTap: () {
                  // Get.to(MainBottombar());
                },
                // width: 100,
                height: 30,
              ),
              SizedBox(width: 10),

              // Icon(Icons.arrow_forward_ios, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}

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
