import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/controllers/edit_controller.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    final EditController c = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 1080,
            height: 1920,
            decoration: const BoxDecoration(color: Colors.white),
            child: Stack(
              children: [

                /// HEADER
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 1080,
                    height: 210,
                    color: const Color(0xFF77BB92),
                  ),
                ),

                /// TITLE
                Positioned(
                  left: 32,
                  top: 17,
                  child: const Text(
                    'UsBook.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 96,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                /// SUBTITLE
                Positioned(
                  left: 35,
                  top: 123,
                  child: const Text(
                    'List Buku Favorit Anda!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),

                /// CARD
                Positioned(
                  left: 38,
                  top: 445,
                  child: Container(
                    width: 1003,
                    height: 1030,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7FBC95),
                      borderRadius: BorderRadius.circular(59),
                    ),
                  ),
                ),

                /// EDIT TITLE
                Positioned(
                  left: 74,
                  top: 340,
                  child: const Text(
                    'Edit Book',
                    style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                /// INPUT JUDUL
                _inputField(
                  top: 563,
                  controller: c.namaController,
                  hint: 'Judul',
                ),

                /// INPUT DESKRIPSI
                _inputField(
                  top: 723,
                  controller: c.genreController,
                  hint: 'Deskripsi',
                ),

                /// INPUT AUTHOR
                _inputField(
                  top: 883,
                  controller: c.authorController,
                  hint: 'Author',
                ),

                /// INPUT URL IMAGE
                _inputField(
                  top: 1043,
                  controller: c.gambarController,
                  hint: 'Url Image',
                ),

                /// SAVE BUTTON (✔)
                Positioned(
                  left: 672,
                  top: 1275,
                  child: GestureDetector(
                    onTap: c.updateBuku,
                    child: Container(
                      width: 143,
                      height: 143,
                      decoration: const BoxDecoration(
                        color: Color(0xFF54E15D),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.check,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                /// DELETE BUTTON (🗑)
                Positioned(
                  left: 850,
                  top: 1274,
                  child: GestureDetector(
                  ///  onTap: c.hapusBuku,
                    child: Container(
                      width: 145,
                      height: 145,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF0004),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.delete,
                          size: 65,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// ================= INPUT FIELD =================
  Widget _inputField({
    required double top,
    required TextEditingController controller,
    required String hint,
  }) {
    return Positioned(
      left: 84,
      top: top,
      child: Container(
        width: 911,
        height: 131,
        padding: const EdgeInsets.symmetric(horizontal: 36),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(85),
        ),
        child: TextField(
          controller: controller,
          style: const TextStyle(
            fontSize: 40,
            fontFamily: 'Poppins',
          ),
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
