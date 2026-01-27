import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/models/buku.dart';
import 'package:latihan_tokoapi/services/firebase_db_services.dart';

class AddController extends GetxController {
  final BukuService _service = BukuService();

  final gambarController = TextEditingController();
  final authorController = TextEditingController();
  final genreController = TextEditingController();
  final hargaController = TextEditingController();
  final namaController = TextEditingController();

  void tambahBuku() async {
    if (
        gambarController.text.isEmpty ||
        authorController.text.isEmpty ||
        genreController.text.isEmpty ||
        hargaController.text.isEmpty ||
        namaController.text.isEmpty
    ) {
      Get.snackbar("Error", "Semua field wajib diisi");
      return;
    }

    final buku = Buku(
      id: "",
      gambar: gambarController.text,
      genre: genreController.text,
      author: authorController.text,
      harga: int.parse(hargaController.text),
      nama: namaController.text,
    );

    await _service.tambahBuku(buku);
    Get.back();
  }

  @override
  void onClose() {
    gambarController.dispose();
    authorController.dispose();
    genreController.dispose();
    hargaController.dispose();
    namaController.dispose();
    super.onClose();
  }
}