import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pet/main.dart';
import 'package:pet/test/list_of_product.dart';
import 'package:pet/ui/map/locations.dart';
import 'package:pet/utility/network.dart';
import 'package:pet/utility/utility.dart';
import 'package:pet/utility/utilitys.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController; //contrller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation = const LatLng(27.7089427, 85.3086209); //location to show in map
  List<GetAllTurfData> getAllTurfData = [];
  LatLng? showLocations;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getallTurf();
  }

  getallTurf() async {
    if (await Network.isConnected()) {
      GetAllTurfResponse result = await apiProvider.getAllTurfList();

      log("$result");
      if (result.message == "Success") {
        getAllTurfData = result.data!;
         showLocations =LatLng(double.parse(getAllTurfData[1].turfLat), double.parse(getAllTurfData[1].turfLong));
        log("getAllTurfData${getAllTurfData[0].turfName}");
        log("getAllTurfData${getAllTurfData[0].tblTurfPrices[0].price}");
        log("getAllTurfData$showLocations");
        setState(() {

        });
      } else {
        Utility.showToast(msg: "result.message");
      }
    } else {
      Utility.showToast(msg: "please check your internet connection");
    }
  }

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;
    double appWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Multiple Markers in Google Map"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body:showLocations==null?Center(child: CircularProgressIndicator()): Stack(children: [
          GoogleMap(
            //Map widget from google_maps_flutter package
            zoomGesturesEnabled: true, //enable Zoom in, out on map
            initialCameraPosition: CameraPosition(
              //innital position in map
              target: showLocations == null?showLocation:showLocations!, //initial position

              zoom: 15.0, //initial zoom level
            ),
            markers: getmarkers(), //markers to show on map
            mapType: MapType.normal, //map type
            onMapCreated: (controller) {
              //method called when map is created
              setState(() {
                mapController = controller;
              });
            },
          ),
          Align(
            alignment: const Alignment(0, 0.98),
            child: Container(
              height: appHeight * 0.055,
              width: appWidth * .50,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: -2,
                    blurRadius: 5,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LIstOfProduct(
                                      getAllTurfData: getAllTurfData,
                                    )));
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/lounges/icoun/fillter.png',
                            width: 28,
                            scale: 1,
                            color: borderColor,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "List",
                            style: TextStyle(color: boxBorderC, fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      thickness: 1.4,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/lounges/icoun/fillter.png',
                          width: 28,
                          scale: 1,
                          color: borderColor,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Filters",
                          style: TextStyle(color: boxBorderC, fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }

  Set<Marker> getmarkers() {
    //markers to place on map

    setState(() {
      markers.add(Marker(
        //add first marker
        markerId: MarkerId(showLocations!.toString()),
        position: showLocations!, //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Marker Title First ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
getAllTurfData.forEach((element) {
  markers.add(Marker(
    //add second marker
    markerId: MarkerId(showLocation.toString()),
    position: LatLng(double.parse(element.turfLat), double.parse(element.turfLong)), //position of marker
    infoWindow: InfoWindow(
      //popup info
      title: '${element.turfName}',
      snippet: 'from ₹${element.tblTurfPrices[0].price}',
    ),
    icon: BitmapDescriptor.defaultMarker, //Icon for Marker
  ));
});
      // markers.add(Marker(
      //   //add second marker
      //   markerId: MarkerId(showLocation.toString()),
      //   position: LatLng(27.7099116, 85.3132343), //position of marker
      //   infoWindow: InfoWindow(
      //     //popup info
      //     title: 'Marker Title Second ',
      //     snippet: 'My Custom Subtitle',
      //   ),
      //   icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      // ));
      //
      // markers.add(Marker(
      //   //add third marker
      //   markerId: MarkerId(showLocation.toString()),
      //   position: LatLng(27.7137735, 85.315626), //position of marker
      //   infoWindow: InfoWindow(
      //     //popup info
      //     title: 'Marker Title Third ',
      //     snippet: 'My Custom Subtitle',
      //   ),
      //   icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      // ));

      //add more markers here
    });
log("markers$markers");
    return markers;
  }
}
