import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:intl/intl.dart';
import 'package:playsport_app/models/productModel.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;
  final DateTime currentDateTime = DateTime.now();
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  var formattedCurrentDate = ''.obs;

  // ScrollController _scrollController = ScrollController();
  Product selectedProduct;
  @override
  void onInit() {
    formattedCurrentDate.value = formatter.format(currentDateTime);
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      // var products = await RemoteServices.fetchProducts();
      // if (products != null) {
      //   productList.value = products;
      // }
      productList.clear();
      await Future.delayed(Duration(seconds: 2));
      var products = [
        Product(
            name: "Baseball",
            description: "JCC Baseball",
            color: Colors.green,
            currentCount: 4,
            totalCount: 10,
            type: "Book",
            fromTime: "17:00",
            toTime: "18:00"),
        Product(
            name: "Pilates",
            description: "Sarasota Xplosion Basketball",
            color: Colors.purple,
            currentCount: 4,
            totalCount: 10,
            type: "Purchase",
            fromTime: "03:00",
            toTime: "04:00"),
        Product(
            name: "Yoga",
            description: "Sarasota Xplosion Basketball",
            color: Colors.purple,
            currentCount: 5,
            totalCount: 10,
            type: "Purchase",
            fromTime: "16:00",
            toTime: "17:00"),
      ];

      productList.value = products;
    } finally {
      isLoading(false);
    }
  }
}
