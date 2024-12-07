import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(37.7749, -122.4194);

 void _onMapCreated(GoogleMapController controller) {
  mapController = controller;
  print('Map created successfully');
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('specialist1'),
            position: LatLng(37.7749, -122.4194),
            infoWindow: InfoWindow(
              title: 'Specialist 1',
              snippet: 'Category: Babysitter',
            ),
          ),
        },
      ),
    );
  }
}
