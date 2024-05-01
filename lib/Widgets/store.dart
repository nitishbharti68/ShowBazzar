import 'dart:ffi';

import 'package:flutter/material.dart';

class Store {
  String imagePath;
  String Name;



  Store(
      {required this.Name,
        required this.imagePath,

      });
}

List<Store> profiless = [
  Store(
      Name: 'HP',
      // uniqueId: '@abhishek123',
      imagePath: 'images/hp.jpeg',
     ),
  Store(
      Name: 'Apple',
      imagePath: 'images/apple.jpeg',
   ),
  Store(
      Name: 'Nike',
      imagePath: 'images/nike.jpeg',
),
  Store(
      Name: 'Levis',
      imagePath: 'images/levis.jpeg',
),

];

String truncateProfileName(String name) {
  const int maxLength = 4;
  if (name.length <= maxLength) {
    return name;
  } else {
    return '${name.substring(0, maxLength)}...';
  }
}
