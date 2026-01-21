import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/controllers/edit_controller.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    final EditController c = Get.find();

    return Scaffold(
      appBar: AppBar(title: const Text("Edit buku")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: c.gambarController,
              decoration: const InputDecoration(labelText: "Url Gambar"),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: c.namaController,
              decoration: const InputDecoration(labelText: "Judul"),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: c.authorController,
              decoration: const InputDecoration(labelText: "Author"),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: c.genreController,
              decoration: const InputDecoration(labelText: "Genre"),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: c.hargaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Harga"),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: c.updateBuku,
              child: const Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}