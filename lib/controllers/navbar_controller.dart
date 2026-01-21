import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/pages/inspect_page.dart';
import 'package:latihan_tokoapi/pages/list_page.dart';

class NavbarController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> pages = const [
      ListPage(), 
      InspectPage()
    ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
