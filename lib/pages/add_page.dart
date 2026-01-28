import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/controllers/add_controller.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AddController c = Get.find();
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// HEADER
              Container(
                height: size.height * 0.12,
                width: double.infinity,
                color: const Color(0xFF77BB92),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'UsBook.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.08,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'List Buku Favorit Anda!',
                style: TextStyle(
                  fontSize: size.width * 0.035,
                  fontFamily: 'Poppins',
                ),
              ),

              const SizedBox(height: 20),

              Text(
                'Add Book',
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),

              const SizedBox(height: 16),

              /// FORM CARD
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF7FBC95),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  children: [
                    _inputBox(
                      hint: "Judul",
                      controller: c.namaController,
                    ),
                    const SizedBox(height: 16),

                    _inputBox(
                      hint: "Deskripsi",
                      controller: c.genreController,
                    ),
                    const SizedBox(height: 16),

                    _inputBox(
                      hint: "Author",
                      controller: c.authorController,
                    ),
                    const SizedBox(height: 16),

                    _inputBox(
                      hint: "Harga",
                      controller: c.hargaController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                    const SizedBox(height: 16),

                    _inputBox(
                      hint: "Url Image",
                      controller: c.gambarController,
                    ),

                    const SizedBox(height: 24),

                    /// SUBMIT BUTTON
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: c.tambahBuku,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Color(0xFF54E15D),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  
 Widget _inputBox({
  required String hint,
  required TextEditingController controller,
  TextInputType? keyboardType,
  List<TextInputFormatter>? inputFormatters,
}) {
  return Container(
    height: 52,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
    ),
    child: TextField(
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: hint,
        border: InputBorder.none,
      ),
    ),
  );
}