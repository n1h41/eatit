import 'dart:async';
import 'package:eatit/screens/home_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class LocationPickScreen extends StatefulWidget {
  const LocationPickScreen({Key? key}) : super(key: key);

  @override
  _LocationPickScreenState createState() => _LocationPickScreenState();
}

class _LocationPickScreenState extends State<LocationPickScreen> {
  String _placeName = 'Kaloor';
  String _address = 'Kaloor, Kochi, 666777, India';
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(Utils.mapStyle);
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('id-1'),
        position: LatLng(9.9915134, 76.287572),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        markers: _markers,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(9.9915134, 76.287572),
                          zoom: 15,
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.04,
                      left: size.width * 0.02,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[350],
                        child: Padding(
                          padding: EdgeInsets.only(left: size.width * 0.01),
                          child: IconButton(
                              onPressed: () {
                                print('Pressed');
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.025,
                  horizontal: size.width * 0.03,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'SELECT DELIVERY LOCATION',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size.height * 0.021,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text(
                          _placeName,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: size.height * 0.025),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () => null,
                          child: Container(
                            padding: EdgeInsets.all(size.height * 0.008),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'CHANGE',
                                style: TextStyle(
                                  color: Color(0xffff4a71),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    Text(_address),
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen())),
                                          child: Container(
                        width: double.infinity,
                        height: size.height * 0.075,
                        decoration: BoxDecoration(
                          color: Color(0xffff4a71),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'CONFIRM LOCATION',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Utils {
  static String mapStyle = '''
  [
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#bdbdbd"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dadada"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#c9c9c9"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  }
]
  ''';
}
