import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:latihan_tokoapi/bindings/list_binding.dart';
import 'package:latihan_tokoapi/bindings/startup_binding.dart';
import 'package:latihan_tokoapi/configs/routes.dart';
import 'package:latihan_tokoapi/pages/list_page.dart';

class AppPages {
  static final pages=[
    GetPage(name: AppRoutes.listPage, page: ()=>ListPage(), binding: ListBinding()),
    GetPage(name: AppRoutes.startupPage, page: ()=>ListPage(), binding: StartupBinding()),
    GetPage(name: AppRoutes.addPage, page: ()=>ListPage(), binding: ListBinding()),
    GetPage(name: AppRoutes.editPage, page: ()=>ListPage(), binding: ListBinding()),
    GetPage(name: AppRoutes.inspectPage, page: ()=>ListPage(), binding: ListBinding()),
  ];
}