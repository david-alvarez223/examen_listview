import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ListViews',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
        ),
        body: CelestialListView(),
      ),
    );
  }
}

class CelestialListView extends StatelessWidget {
  final List<CelestialBody> celestialBodies = [
    CelestialBody(name: 'Sun', imagePath: 'web/assets/sun.jpg'),
    CelestialBody(name: 'Moon', imagePath: 'web/assets/moon.jpg'),
    CelestialBody(name: 'Star', imagePath: 'web/assets/stars.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: celestialBodies.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(celestialBodies[index].imagePath),
          ),
          title: Text(celestialBodies[index].name),
        );
      },
    );
  }
}

class CelestialBody {
  final String name;
  final String imagePath;

  CelestialBody({required this.name, required this.imagePath});
}
