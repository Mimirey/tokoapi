import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/components/title_text.dart';
import 'package:latihan_tokoapi/configs/routes.dart';
import 'package:latihan_tokoapi/controllers/list_controller.dart';
import 'package:latihan_tokoapi/models/buku.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ListController c = Get.put(ListController());

    return Scaffold(
      appBar: AppBar(
        title: const TitleText(
          text: "Book List",
          fontSize: 30,
          color: Color.fromARGB(255, 135, 193, 137),
        ),
      ),

      body: Obx(() {
        if (c.bukuList.isEmpty) {
          return const Center(
            child: Text("Belum ada buku"),
          );
        }

        return ListView.builder(
          itemCount: c.bukuList.length,
          itemBuilder: (context, index) {
            final Buku buku = c.bukuList[index];

            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                leading: Image.network(
                  buku.gambarUrl,
                  width: 50,
                  errorBuilder: (_, __, ___) =>
                      const Icon(Icons.book),
                ),
                title: Text(
                  buku.nama,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "${buku.author}\nRp ${buku.harga}",
                ),
                isThreeLine: true,

                onTap: () {
                  Get.toNamed(
                    AppRoutes.editPage,
                    arguments: buku,
                  );
                },

                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    c.hapusBuku(buku.id);
                  },
                ),
              ),
            );
          },
        );
      }),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(AppRoutes.addPage),
        child: const Icon(Icons.add),
      ),
    );
  }
}