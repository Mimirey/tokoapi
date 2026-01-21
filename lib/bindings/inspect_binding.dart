import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:latihan_tokoapi/controllers/inspect_controller.dart';

class InspectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InspectController>(() => InspectController());
  }
}
