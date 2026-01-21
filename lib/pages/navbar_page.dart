import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:latihan_tokoapi/controllers/navbar_controller.dart';

class NavbarPage extends StatelessWidget {
  NavbarPage({super.key});

  final NavbarController c = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) { // gatau kenapa gabisa co
    return Obx(
      () => Scaffold(
        body: c.pages[c.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: c.selectedIndex.value,
          onTap: c.changePage,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Inspect'),
          ],
        ),
      ),
    );
  }
}
