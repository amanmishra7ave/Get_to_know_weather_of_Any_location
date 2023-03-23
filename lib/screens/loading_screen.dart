import 'package:climate_flutter3/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:climate_flutter3/service/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

@override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? latitude;
  double? longitude;

  // static const String apiKey = '2b2b2be91c309569d4c6a3b900cc1f90';

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    // WeatherModel weatherModel = WeatherModel();
    var weatherData = await WeatherModel().getLocationWeather();
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
