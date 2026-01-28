import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/controllers/edit_controller.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    final EditController c = Get.find();
    final size = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  /// HEADER
                  Container(
                    height: 90,
                    color: const Color(0xFF77BB92),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'UsBook.',
                      style: TextStyle(
                        fontSize: width * 0.08,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  /// SUBTITLE
                  Positioned(
                    left: 20,
                    top: size.height * 0.06,
                    child: Text(
                      'List Buku Favorit Anda!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.035,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),

                  /// EDIT TITLE
                  Positioned(
                    left: 20,
                    top: size.height * 0.14,
                    child: Row(
                      children: [
                        Text(
                          'Edit Book',
                          style: TextStyle(
                            fontSize: size.width * 0.04,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),

                  /// CARD CONTAINER
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF7FBC95),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Column(
                      children: [
                        /// INPUT JUDUL
                        _inputField(
                          size: size,
                          controller: c.namaController,
                          hint: 'Judul',
                        ),
                  
                        const SizedBox(height: 16),
                  
                        /// INPUT DESKRIPSI
                        _inputField(
                          size: size,
                          controller: c.genreController,
                          hint: 'Deskripsi',
                        ),
                  
                        const SizedBox(height: 16),
                  
                        /// INPUT AUTHOR
                        _inputField(
                          size: size,
                          controller: c.authorController,
                          hint: 'Author',
                        ),
                  
                        const SizedBox(height: 16),
                  
                        _inputField(
                          size: size,
                          hint: "Harga",
                          controller: c.hargaController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                  
                        const SizedBox(height: 16),
                  
                        /// INPUT URL IMAGE
                        _inputField(
                          size: size,
                          controller: c.gambarController,
                          hint: 'Url Image',
                        ),
                  
                        const SizedBox(height: 24),
                  
                        /// BUTTONS ROW
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            /// SAVE BUTTON (✔)
                            GestureDetector(
                              onTap: c.updateBuku,
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF54E15D),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.check,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                  
                            const SizedBox(width: 12),
                  
                            /// DELETE BUTTON (🗑)
                            GestureDetector(
                              onTap: c.hapusBuku,
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFF0004),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.delete,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _inputField({
  required Size size,
  required TextEditingController controller,
  required String hint,
  TextInputType? keyboardType,
  List<TextInputFormatter>? inputFormatters,
}) {
  return Container(
    height: 60,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
    ),
    child: TextField(
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      style: TextStyle(fontSize: size.width * 0.04, fontFamily: 'Poppins'),
      decoration: InputDecoration(hintText: hint, border: InputBorder.none),
    ),
  );
}
