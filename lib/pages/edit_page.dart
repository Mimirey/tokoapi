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
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              /// HEADER
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 210,
                  color: const Color(0xFF77BB92),
                ),
              ),

              /// TITLE
              const Positioned(
                left: 32,
                top: 17,
                child: Text(
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
              const Positioned(
                left: 35,
                top: 123,
                child: Text(
                  'List Buku Favorit Anda!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),

              /// EDIT TITLE
              const Positioned(
                left: 74,
                top: 340,
                child: Text(
                  'Edit Book',
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              /// CARD
              Positioned(
                left: 38,
                top: 445,
                right: 38,
                child: Container(
                  height: 1030,
                  decoration: BoxDecoration(
                    color: const Color(0xFF7FBC95),
                    borderRadius: BorderRadius.circular(59),
                  ),
                ),
              ),

              /// INPUT JUDUL
              _inputField(
                context: context,
                top: 563,
                controller: c.namaController,
                hint: 'Judul',
              ),

              /// INPUT DESKRIPSI
              _inputField(
                context: context,
                top: 723,
                controller: c.genreController,
                hint: 'Deskripsi',
              ),

              /// INPUT AUTHOR
              _inputField(
                context: context,
                top: 883,
                controller: c.authorController,
                hint: 'Author',
              ),

              /// INPUT URL IMAGE
              _inputField(
                context: context,
                top: 1043,
                controller: c.gambarController,
                hint: 'Url Image',
              ),

              /// SAVE BUTTON (✔)
              Positioned(
                left: MediaQuery.of(context).size.width * 0.62,
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
                left: MediaQuery.of(context).size.width * 0.79,
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
      ),
    );
  }

  /// ================= INPUT FIELD =================
  Widget _inputField({
    required BuildContext context,
    required double top,
    required TextEditingController controller,
    required String hint,
  }) {
    return Positioned(
      left: 84,
      top: top,
      right: 84,
      child: Container(
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