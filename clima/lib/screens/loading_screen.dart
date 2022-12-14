import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // void getLocation() async {
  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.low);
  //   print(position);
  // }

  Position? position;

  fetchPosition() async {
    bool serviceEnabled;
    //checks if the location service is enabled on the device
    LocationPermission permission;
    //checks if the user has granted the permission to check location already

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //we use await for asynchronus programming since this will take a while
    if (!serviceEnabled) {
      //if geolocator checks service and it's not enabled then
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    Position currentposition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    //the desiredAccuracy is to preserve battery of the user
    setState(() {
      position = currentposition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Location')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(position == null ? 'Location' : position.toString()),
          //tenary operator if position is null bring location else bring
          //location gotten by geolacator to a string.
          ElevatedButton(
              onPressed: () => fetchPosition(), child: Text('Find Location'))
        ]),
      ),
    );
    // Scaffold(
    //   body: Center(
    //     child: ElevatedButton(
    //       onPressed: () {
    //         fetchPosition();
    //       },
    //       child: Text('Get Location'),
    //     ),
    //   ),
    // );
  }
}
