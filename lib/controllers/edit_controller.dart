import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/models/buku.dart';
import 'package:latihan_tokoapi/services/firebase_db_services.dart';

class EditController extends GetxController {
  final BukuService _service = BukuService();

  late Buku buku;

  final gambarController = TextEditingController();
  final authorController = TextEditingController();
  final genreController = TextEditingController();
  final hargaController = TextEditingController();
  final namaController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    buku = Get.arguments as Buku;

    gambarController.text = buku.gambar;
    authorController.text = buku.author;
    genreController.text = buku.genre;
    hargaController.text = buku.harga.toString();
    namaController.text = buku.nama;
  }

  void updateBuku() async {
    final updatedBuku = Buku(
      id: buku.id,
      gambar: gambarController.text,
      genre: genreController.text,
      author: authorController.text,
      harga: int.parse(hargaController.text),
      nama: namaController.text,
    );

    await _service.updateBuku(updatedBuku);
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