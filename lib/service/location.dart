// import 'package:flutter/material.dart';

// @override
// Widget build(BuildContext context) {
//   String myMargin = '15';
//   double myMarginAsDouble;
//   try {
//     double myMarginAsDouble = double.parse(myMargin);
//   } catch (e) {
//     print(e);
//   }
//   return Scaffold(
//     body: Container(
//       margin: EdgeInsets.all(30),
//       color: Colors.red,
//     ),
//   );
// }

import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  getLocation() {}
}
