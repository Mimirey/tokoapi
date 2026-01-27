import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_tokoapi/components/custom_button.dart';
import 'package:latihan_tokoapi/controllers/list_controller.dart';
import 'package:latihan_tokoapi/pages/list_page.dart';

class StartupPage extends StatelessWidget {
  const StartupPage({super.key});

  void _goNext() {
    Get.offAll(
      () => ListPage(),
      binding: BindingsBuilder(() {
        Get.put(ListController());
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFFDFFFF),
      body: SafeArea(
        child: Center(
          child: AspectRatio(
            aspectRatio: 9 / 16, 
            child: Stack(
              children: [
                
                Positioned(
                  top: size.height * 0.06,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'UsBook.',
                      style: TextStyle(
                        color: const Color(0xFF77BB92),
                        fontSize: size.width * 0.09,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),

                
                Positioned(
                  top: size.height * 0.12,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'List Buku Favorit Anda!',
                      style: TextStyle(
                        fontSize: size.width * 0.04,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),

               
                Positioned(
                  top: size.height * 0.18,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Image.asset(
                      'assets/UsBook.png',
                      width: size.width * 0.7,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

               
                Positioned(
                  top: size.height * 0.53,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Add And List Your Book',
                      style: TextStyle(
                        fontSize: size.width * 0.055,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),

               
                Positioned(
                  top: size.height * 0.58,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Explore Library of fitur UsBook',
                      style: TextStyle(
                        fontSize: size.width * 0.035,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),

                
                Positioned(
                  top: size.height * 0.62,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Read anywhere Add anytime',
                      style: TextStyle(
                        fontSize: size.width * 0.035,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),

               
                Positioned(
                  bottom: size.height * 0.05,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CustomButton(
                      text: 'Get Started',
                      onPressed: _goNext,
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
}
