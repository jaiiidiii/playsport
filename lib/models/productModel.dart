import 'package:flutter/material.dart';

class Product {
  Product({
    this.name,
    this.description,
    this.fromTime,
    this.toTime,
    this.totalCount,
    this.currentCount,
    this.type,
    this.color,
  });

  String name;
  String description;
  String fromTime;
  String toTime;
  int totalCount;
  int currentCount;
  String type;
  Color color;
}
