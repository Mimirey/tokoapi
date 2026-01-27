import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/controllers/add_controller.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AddController c = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: AspectRatio(
            aspectRatio: 9 / 16,
            child: Stack(
              children: [
                /// HEADER
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 90,
                    color: const Color(0xFF77BB92),
                  ),
                ),

                /// TITLE
                const Positioned(
                  left: 20,
                  top: 12,
                  child: Text(
                    'UsBook.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                /// SUBTITLE
                const Positioned(
                  left: 20,
                  top: 52,
                  child: Text(
                    'List Buku Favorit Anda!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),

                /// ADD BOOK TEXT
                const Positioned(
                  left: 20,
                  top: 110,
                  child: Text(
                    'Add Book',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                /// CARD
                Positioned(
                  left: 20,
                  right: 20,
                  top: 150,
                  child: Container(
                    height: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7FBC95),
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                ),

                /// ===== INPUT JUDUL =====
                _inputBox(
                  top: 180,
                  hint: "Judul",
                  controller: c.namaController,
                ),

                /// ===== INPUT DESKRIPSI =====
                _inputBox(
                  top: 240,
                  hint: "Deskripsi",
                  controller: c.genreController,
                ),

                /// ===== INPUT AUTHOR =====
                _inputBox(
                  top: 300,
                  hint: "Author",
                  controller: c.authorController,
                ),

                /// ===== INPUT URL IMAGE =====
                _inputBox(
                  top: 360,
                  hint: "Url Image",
                  controller: c.gambarController,
                ),

                /// ===== SUBMIT BUTTON =====
                Positioned(
                  right: 40,
                  bottom: 100,
                  child: GestureDetector(
                    onTap: c.tambahBuku,
                    child: Container(
                      width: 64,
                      height: 64,
                      decoration: const BoxDecoration(
                        color: Color(0xFF54E15D),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.check, // ✔ CENTANG
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// ===== INPUT FIELD UI =====
  Widget _inputBox({
    required double top,
    required String hint,
    required TextEditingController controller,
  }) {
    return Positioned(
      left: 40,
      right: 40,
      top: top,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        alignment: Alignment.center,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
