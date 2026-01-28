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
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;

  return Scaffold(
    backgroundColor: const Color(0xFFFDFFFF),
    body: SafeArea(
      child: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              // Title
              Text(
                'UsBook.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF77BB92),
                  fontSize: width * 0.09,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                ),
              ),
          
              // Subtitle
              Text(
                'List Buku Favorit Anda!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width * 0.04,
                  fontFamily: 'Poppins',
                ),
              ),
          
              // Image
              Image.asset(
                'assets/UsBook.png',
                width: width * 0.7,
                height: height * 0.3,
                fit: BoxFit.contain,
              ),
          
          
              // Heading
              Text(
                'Add And List Your Book',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width * 0.04,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                ),
              ),
          
              // Description
              Text(
                'Explore Library of fitur UsBook',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width * 0.035,
                  fontFamily: 'Poppins',
                ),
              ),
          
              Text(
                'Read anywhere Add anytime',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width * 0.035,
                  fontFamily: 'Poppins',
                ),
              ),
          
              SizedBox(height: height * 0.03),
          
              // Button
              Center(
                child: CustomButton(
                  text: 'Get Started',
                  onPressed: _goNext,
                ),
              ),

              SizedBox(height: height * 0.09,)
            ],
          ),
        ),
      ),
    ),
  );
}
}