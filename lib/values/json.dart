import 'package:roavapp/models/podos/dashboard_item.dart';
import 'package:roavapp/models/podos/destination.dart';
import 'package:roavapp/values/images.dart';

const List<DashboardItem> dashItems = [
  DashboardItem(
    title: "Visit a doctor",
    icon: AppSvgs.steth,
    route: "/doctors",
  ),
  DashboardItem(
    title: "Prescription",
    icon: AppSvgs.notepad,
    route: "/prescriptions",
  ),
  DashboardItem(
    title: "Directions",
    icon: AppSvgs.compass,
    route: "/map",
  ),
  DashboardItem(
    title: "Covid",
    icon: AppSvgs.call,
    route: "/covid",
  ),
  DashboardItem(
    title: "Emergency",
    icon: AppSvgs.ambulance,
    route: "/emergency",
  ),
  DashboardItem(
    title: "Discharged",
    icon: AppSvgs.discharged,
    route: "/discharges",
  ),
];

const Destination hospitalLocation = Destination(
  name: "Green Medical Center",
  long: 3.3507791,
  lat: 6.5819464,
  picture: "",
);
