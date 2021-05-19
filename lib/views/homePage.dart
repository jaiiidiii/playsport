import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playsport_app/controllers/baseController.dart';
import 'package:playsport_app/controllers/productController.dart';
import 'package:playsport_app/models/productModel.dart';
import 'package:playsport_app/utils/global.dart';
import 'package:playsport_app/widgets/buttonWidget.dart';
import 'package:playsport_app/widgets/customAvatars.dart';
import 'package:playsport_app/widgets/customLoaderWidget.dart';

class HomePage extends StatelessWidget {
  final BaseController baseController = Get.find<BaseController>();
  final ProductController productController = Get.put(ProductController());
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Obx(() {
      return CustomLoaderWidget(
        isTrue: productController.isLoading.value,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              baseController.currentIndex = 2;
            },
            child: Icon(
              Icons.add,
              color: Colors.orange,
            ),
          ),
          backgroundColor: ThemeConstants.grayBackgroundColor,
          body: productController.isLoading.value == true
              ? SizedBox()
              : Padding(
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
                                productController.formattedCurrentDate.value,
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
                            itemCount: productController.productList.length,
                            itemBuilder: (BuildContext context, int index) =>
                                buildCard(productController.productList[index]),
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
                          itemCount: productController.productList.length,
                          itemBuilder: (ctx, int index) {
                            return buildCardTile(
                                productController.productList[index]);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      );
    });
  }

  Card buildCard(Product product) {
    return Card(
      elevation: 0,
      color: ThemeConstants.grayBackgroundColor,
      child: Stack(
        children: [
          Container(
              width: 130,
              height: 177,
              decoration: new BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: product.color,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      product.description,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14,
                          color: ThemeConstants.secondaryTextColor),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '${product.fromTime} - ${product.toTime}',
                      style: TextStyle(
                          fontSize: 14,
                          color: ThemeConstants.secondaryTextColor),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Text(
                        '${product.currentCount}/${product.totalCount}',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    CustomAvatars(),
                  ],
                ),
              )),
          Positioned(
            bottom: 0,
            left: 20,
            child: ButtonWidget(
              buttonText: product.type,
              highlighlightColor: Colors.orange,
              onTap: () {
                baseController.currentIndex = 2;
              },
              height: 35,
            ),
          ),
        ],
      ),
    );
  }

  buildCardTile(Product product) {
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
                color: product.color,
                width: 8,
                height: 70,
                child: SizedBox(),
              ),
              SizedBox(width: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.22,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(product.name),
                    Text(product.description,
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(color: ThemeConstants.secondaryTextColor))
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(product.fromTime),
                    Text(product.toTime),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '${product.currentCount}/${product.totalCount}',
                      style: TextStyle(
                          color: product.currentCount == product.totalCount
                              ? Colors.orange
                              : null),
                    ),
                    CustomAvatars(),
                  ],
                ),
              ),
              ButtonWidget(
                buttonText: product.type,
                highlighlightColor: Colors.orange,
                onTap: () {
                  baseController.currentIndex = 2;
                },
                height: 30,
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
