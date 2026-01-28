import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/configs/routes.dart';
import 'package:latihan_tokoapi/controllers/list_controller.dart';
import 'package:latihan_tokoapi/models/buku.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ListController c = Get.put(ListController());
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              /// HEADER
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(height: 90, color: const Color(0xFF77BB92)),
              ),

              /// TITLE
              Positioned(
                left: 20,
                top: 6,
                child: Text(
                  'UsBook.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.08,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),

              /// SUBTITLE
              Positioned(
                left: 20,
                top: size.height * 0.25,
                child: Text(
                  'List Buku Favorit Anda!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.035,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),

              /// YOUR LIST
              Positioned(
                left: 20,
                top: size.height * 0.15,
                child: Row(
                  children: [
                    Text(
                      'Your List',
                      style: TextStyle(
                        fontSize: size.width * 0.04,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),

              /// BOOK LIST
              Positioned.fill(
                top: 120,
                child: Obx(() {
                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: c.bukuList.length,
                    itemBuilder: (context, index) {
                      final buku = c.bukuList[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: _bookCard(
                          size: size,
                          buku: buku,
                          onEdit: () {},
                          onDelete: () {
                            Get.defaultDialog(
                              title: 'Hapus Buku',
                              middleText: 'Yakin ingin menghapus buku ini?',
                              textConfirm: 'Hapus',
                              textCancel: 'Batal',
                              confirmTextColor: Colors.white,
                              onConfirm: () {
                                c.hapusBuku(buku.id);
                                Get.back();
                              },
                            );
                          },
                        ),
                      );
                    },
                  );
                }),
              ),

              /// ADD BUTTON
              Positioned(
                right: 24,
                bottom: 24,
                child: GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.addPage),
                  child: Container(
                    width: size.width * 0.10,
                    height: size.width * 0.10,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(1),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 119, 199, 149),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(Icons.add, color: Colors.white, size: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bookCard({
    required Size size,
    required Buku buku,
    required VoidCallback onEdit,
    required VoidCallback onDelete,
  }) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF7FBC95),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        children: [
          /// BOOK IMAGE
          Container(
            width: 70,
            height: 90,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                buku.gambar,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    const Icon(Icons.book, size: 30, color: Colors.grey),
              ),
            ),
          ),

          const SizedBox(width: 14),

          /// BOOK INFO
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buku.nama,
                  style: TextStyle(
                    fontSize: size.width * 0.045,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  buku.author,
                  style: TextStyle(
                    fontSize: size.width * 0.032,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  buku.harga.toString(),
                  style: TextStyle(
                    fontSize: size.width * 0.032,
                    fontFamily: 'Poppins',
                    color: const Color.fromARGB(255, 23, 68, 24),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          /// EDIT BUTTON
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.editPage, arguments: buku);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFF54E15D),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(Icons.edit, size: 20, color: Colors.white),
              ),
            ),
          ),

          const SizedBox(width: 10),

          /// DELETE BUTTON
          GestureDetector(
            onTap: onDelete,
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFFFF0004),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(Icons.delete, size: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
