import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FireMap extends StatefulWidget {
  @override
  State createState() => FireMapState();
}


class FireMapState extends State<FireMap> {
  GoogleMapController mapController;

  build(context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(target: LatLng(0.0917, 34.7680), zoom: 10),
          onMapCreated: _onMapCreated,
          myLocationEnabled: true, // Add little blue dot for device location, requires permission from user
          mapType: MapType.normal,
          trafficEnabled: true,
          // trackCameraPosition: true
        ),
        // Positioned(
        //  top: 10,
        //   left: 10,
        //   child: 
        //   TextField(
            
        //   )
        // )
      ]
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }
}