import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/services.dart';
//import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:flutter_katkemsos/style/style.dart';
//import 'package:flutter_katkemsos/style/icon.dart';
//import 'package:flutter_katkemsos/widgets/main_bar.dart';
//import 'package:flutter_katkemsos/widgets/buttons/main_button.dart';
import 'package:flutter_katkemsos/services/service_locator.dart';
import 'package:flutter_katkemsos/managers/marker_manager.dart';
import 'package:flutter_katkemsos/managers/menu_manager.dart';
import 'package:flutter_katkemsos/model/location.dart';
//import 'package:flutter_katkemsos/widgets/menus/menu_drawer.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Position _position;
  final Set<Marker> _markers = Set();
  Completer<GoogleMapController> _controller = Completer();
//  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    getIt.get<MarkerManager>().loadMarkers.execute();
    super.initState();
    _initPlatformState();
  }

  Future<void> _initPlatformState() async {
    Position position;

    try {
      final Geolocator geolocator = Geolocator()
        ..forceAndroidLocationManager = true;
      position = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);

    print(position);

    } on PlatformException {
      position = null;
    }

    if (!mounted) {
      return;
    }

    setState(() {
      _position = position;
    });
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-1.129609, 113.499366),
    zoom: 5.4746,
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GeolocationStatus>(
      future: Geolocator().checkGeolocationPermissionStatus(),
      builder:
        (BuildContext context, AsyncSnapshot<GeolocationStatus> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.data == GeolocationStatus.denied) {
            return Text('Access to location denied', style: Style.h4.copyWith(color:Style.green),);
          }

        return StreamBuilder<List<Location>>(
          stream: getIt.get<MarkerManager>().loadMarkers,
          builder: (BuildContext context, AsyncSnapshot<List<Location>> snapshot) {
            if(snapshot.hasData && snapshot.data != null) {
              
              snapshot.data.map((Location item) => _markers.add(Marker(
                markerId: MarkerId('${item.latitude}${item.longitude}'),
                onTap:() => _onZoom(item),
                position: LatLng(item.latitude, item.longitude),
                icon: BitmapDescriptor.defaultMarker,
                infoWindow: InfoWindow(
                  title: item.nama_kabupaten,
  //                            onTap: () => getIt.get<MenuManager>().sendId.execute(item.id)
                )
              ))).toList();
            }
            return StreamBuilder<int>(
              stream: getIt.get<MenuManager>().sendId,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                if (snapshot.data == null) {
                  _callback(() {
                    _onOut();
                  });
                }
                return GoogleMap(
                  markers: _markers,
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                );
              }
            );
          }
        );
      }
    );
  }

  Future<void> _onZoom(Location item) async {
    getIt.get<MenuManager>().sendId.execute(item.id);
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
      target: LatLng(item.latitude, item.longitude),
      zoom: 10.151926040649414)
    ));
  }

  Future<void> _onOut() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: LatLng(-1.129609, 113.499366),
        zoom: 5.4746)
    ));
  }

  void _callback(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }
}
