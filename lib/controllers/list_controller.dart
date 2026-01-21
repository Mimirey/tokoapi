import 'package:get/get.dart';
import 'package:latihan_tokoapi/models/buku.dart';
import 'package:latihan_tokoapi/services/firebase_db_services.dart';

class ListController extends GetxController {
  final BukuService _service = BukuService();

  RxList<Buku> bukuList = <Buku>[].obs;

  @override
  void onInit() {
    super.onInit();
    _service.streamBuku().listen((data) {
      bukuList.value = data;
    });
  }

  void hapusBuku(String id) async {
    await _service.hapusBuku(id);
  }
}