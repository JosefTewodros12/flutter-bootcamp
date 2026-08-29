// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// class LoadingScreen extends StatefulWidget {
//   const LoadingScreen({super.key});

//   @override
//   State<LoadingScreen> createState() => _LoadingScreenState();
// }

// class _LoadingScreenState extends State<LoadingScreen> {
//   @override
//   void initState() {
//     // todo: implement initState
//     super.initState();
//     //print("init state");
//     getLocation();
//   }

//   @override
//   void deactivate() {
//     // todo: implement deactivate
//     super.deactivate();
//     //print("deactivate");
//   }

//   // Future<Position> getLocation() async {
//   //   LocationPermission permission = await Geolocator.requestPermission();

//   //   Position position = await Geolocator.getCurrentPosition(
//   //     locationSettings: const LocationSettings(accuracy: LocationAccuracy.low),
//   //   );
//   //   print(position.latitude);
//   //   print(position.longitude);
//   //   return position;
//   // }
//   Future<Position?> getLocation() async {
//     bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       print('Location services are disabled.');
//       return null;
//     }

//     LocationPermission permission = await Geolocator.checkPermission();

//     if (permission == LocationPermission.denied) {
//       // Prompt the user for permission
//       permission = await Geolocator.requestPermission();
//     }

//     // Check if permission was granted in the dialog above
//     if (permission == LocationPermission.whileInUse ||
//         permission == LocationPermission.always) {
//       Position position = await Geolocator.getCurrentPosition(
//         locationSettings: const LocationSettings(
//           accuracy: LocationAccuracy.low,
//         ),
//       );

//       print('Latitude: ${position.latitude}');
//       print('Longitude: ${position.longitude}');
//       return position;
//     } else {
//       print('Location permission was not granted.');
//       return null;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build method");
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             //Get the current location
//             getLocation();
//             // Navigator.push(
//             //   context,
//             //   MaterialPageRoute(builder: (context) => CityScreen()),
//             // );
//           },
//           child: Text('Get Location'),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// class LoadingScreen extends StatefulWidget {
//   const LoadingScreen({super.key});

//   @override
//   State<LoadingScreen> createState() => _LoadingScreenState();
// }

// class _LoadingScreenState extends State<LoadingScreen> {
//   @override
//   void initState() {
//     super.initState();
//     getLocation();
//   }

//   void getLocation() async {
//     bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       print('Location services are disabled.');
//       return;
//     }

//     LocationPermission permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         print('Location permissions are denied');
//         return;
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       print('Location permissions are permanently denied.');
//       return;
//     }

//     Position position = await Geolocator.getCurrentPosition(
//       locationSettings: const LocationSettings(accuracy: LocationAccuracy.low),
//     );

//     print('Latitude: ${position.latitude}');
//     print('Longitude: ${position.longitude}');
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build method");
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             getLocation();
//           },
//           child: const Text('Get Location'),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    print('1. initState called');
    getLocation();
  }

  void getLocation() async {
    // 1. Request permission
    await Geolocator.requestPermission();

    // 2. Fetch position (with emulator fallback)
    Position? position = await Geolocator.getLastKnownPosition();
    position ??= await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.low),
    );

    // 3. Print coordinates
    if (position != null) {
      print('Latitude: ${position.latitude}');
      print('Longitude: ${position.longitude}');
    }
  }

  @override
  Widget build(BuildContext context) {
    print("build method");
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Button pressed!');
            getLocation();
          },
          child: const Text('Get Location'),
        ),
      ),
    );
  }
}
