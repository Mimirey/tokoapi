import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
//edit pagenya yang ini
class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final editcontroller c = Get.find();   <------------------------------ editcontroller
    // final ListController listController = Get.find();

    return Scaffold(
    appBar: AppBar(title: const Text("Edit buku")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              // controller: c.titleController, <------------------------------ editcontroller
              decoration: const InputDecoration(labelText: "Url Gambar"),
            ),
            const SizedBox(height: 12),
            TextField(
              // controller: c.descController,  <------------------------------ editcontroller
              decoration: const InputDecoration(labelText: "Author"),
            ),
            const SizedBox(height: 12),
            TextField(
              // controller: c.descController,  <------------------------------ editcontroller
              decoration: const InputDecoration(labelText: "Harga"),
            ),
            const SizedBox(height: 12),
            TextField(
              // controller: c.descController,  <------------------------------ editcontroller
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            const SizedBox(height: 12),

            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text("Tambah"),
            ),
          ],
        ),
      ),
    );
  }
}