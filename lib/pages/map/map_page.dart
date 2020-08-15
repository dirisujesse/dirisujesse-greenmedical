import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:roavapp/components/fragments/buttons/app_back_button.dart';
import 'package:roavapp/models/podos/nav_data.dart';
import 'package:roavapp/utils/dimensions.dart';
import 'package:roavapp/values/json.dart';

class MapPage extends StatefulWidget {
  const MapPage();

  @override
  State<StatefulWidget> createState() {
    return _MapPageState();
  }
}

class _MapPageState extends State<MapPage> with WidgetsBindingObserver {
  Completer<GoogleMapController> _controller = Completer();
  ValueNotifier<NavData> curPos = ValueNotifier(
    NavData(
      position: Position(
        latitude: 0,
        longitude: 0,
      ),
      distance: "0 kms",
    ),
  );

  // StreamSubscription<Position> tracker;

  _MapPageState({this.curPos});

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
    // initPos();
  }

  // initPos() async {
  //   final position = await Geolocator().getCurrentPosition();
  //   String dist = await getDistance(position);
  //   curPos.value = NavData(
  //     position: position,
  //     distance: dist,
  //   );
  // }

  // Future<String> getDistance(Position pos) async {
  //   double dist = await Geolocator().distanceBetween(
  //     pos.latitude,
  //     pos.longitude,
  //     hospitalLocation.lat,
  //     hospitalLocation.long,
  //   );
  //   return parseDistance(
  //     dist,
  //     isRaw: true,
  //   );
  // }

  // void _trackPos() async {
  //   tracker = Geolocator()
  //       .getPositionStream(
  //     LocationOptions(
  //       accuracy: LocationAccuracy.best,
  //       distanceFilter: 4,
  //       timeInterval: 1000,
  //     ),
  //   )
  //       .listen((Position pos) async {
  //     try {
  //       String dist = await getDistance(pos);
  //       curPos.value = NavData(
  //         position: pos,
  //         distance: dist,
  //       );
  //     } catch (e) {
  //       print(e);
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final scaler = AppScaleUtil(context);
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Container(
            constraints: BoxConstraints.tightFor(
              height: scaler.sizer.height,
              width: scaler.sizer.width,
            ),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: GoogleMap(
                    markers: Set<Marker>()
                      ..add(
                        Marker(
                          markerId: MarkerId('B'),
                          position: LatLng(
                            hospitalLocation.lat,
                            hospitalLocation.long,
                          ),
                        ),
                      ),
                    mapType: MapType.terrain,
                    onMapCreated: (GoogleMapController controller) {
                      // _ctrl = controller;
                      _controller.complete(controller);
                    },
                    indoorViewEnabled: true,
                    trafficEnabled: true,
                    myLocationEnabled: true,
                    compassEnabled: true,
                    initialCameraPosition: CameraPosition(
                      zoom: 15,
                      bearing: 30,
                      target: LatLng(
                        hospitalLocation.lat,
                        hospitalLocation.long,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: SafeArea(
                    child: AppBackButton(),
                  ),
                  top: scaler.sizer.setHeight(1),
                  left: scaler.sizer.setWidth(4),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    // if (tracker != null) {
    //   tracker.cancel();
    // }
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
