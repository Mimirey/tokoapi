import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:latihan_tokoapi/bindings/add_binding.dart';
import 'package:latihan_tokoapi/bindings/edit_binding.dart';
import 'package:latihan_tokoapi/bindings/inspect_binding.dart';
import 'package:latihan_tokoapi/bindings/list_binding.dart';
import 'package:latihan_tokoapi/bindings/navbar_binding.dart';
import 'package:latihan_tokoapi/bindings/startup_binding.dart';
import 'package:latihan_tokoapi/configs/routes.dart';
import 'package:latihan_tokoapi/pages/add_page.dart';
import 'package:latihan_tokoapi/pages/edit_page.dart';
import 'package:latihan_tokoapi/pages/home_page.dart';
import 'package:latihan_tokoapi/pages/inspect_page.dart';
import 'package:latihan_tokoapi/pages/list_page.dart';
import 'package:latihan_tokoapi/pages/navbar_page.dart';
import 'package:latihan_tokoapi/pages/startup_page.dart';

class AppPages {
  static final pages=[
    GetPage(name: AppRoutes.listPage, page: ()=>ListPage(), binding: ListBinding()),
    GetPage(name: AppRoutes.startupPage, page: ()=>StartupPage(), binding: StartupBinding()),
    GetPage(name: AppRoutes.addPage, page: ()=>AddPage(), binding: AddBinding()),
    GetPage(name: AppRoutes.editPage, page: ()=>EditPage(), binding: EditBinding()),
    GetPage(name: AppRoutes.inspectPage, page: ()=>InspectPage(), binding: InspectBinding()),
    GetPage(name: AppRoutes.navbarPage, page: ()=>NavbarPage(), binding: NavbarBinding()),
    GetPage(name: AppRoutes.homePage, page: ()=>Homepage(),)
  ];
}