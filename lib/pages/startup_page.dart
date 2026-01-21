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
        Get.put(ListController);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    "UsBook",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: const Color.fromARGB(255, 135, 193, 137),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    "List Buku Favorit Anda!",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Image.network(
                    "https://imgx.gridstore.id/gridstore/frontend/asset/upload/emagz/bobo/cover/large/bobo-14-2023-1681091715-bobo.webp"),
                    width: 200,//ganti gambarnya
                    height: 200,
                  ),
              ),

              Container(
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    "Add And List Your Book",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    "Explore Library of fitur UsBook",
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1.2,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    "Read anywhere Add anytime",
                    style: TextStyle(
                      fontSize: 13.5,
                      letterSpacing: 1.2,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              CustomButton(text: 'Get Started', onPressed: _goNext),
            ],
          ),
        ),
      ),
    );
  }
}
