import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: AspectRatio(
            aspectRatio: 9 / 16, 
            child: Stack(
              children: [

             
                Positioned(
                  top: -12,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: size.height * 0.12,
                    color: const Color(0xFF77BB92),
                  ),
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

                
                Positioned(
                  left: 20,
                  top: size.height * 0.14,
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
                      const SizedBox(width: 6),
                      const Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),

                
                _bookCard(
                  top: size.height * 0.19,
                  size: size,
                  title: 'Jumanji',
                  desc: 'Ini deskripsi Lorem',
                ),

                
                _bookCard(
                  top: size.height * 0.34,
                  size: size,
                  title: 'Jumanji',
                  desc: 'Ini deskripsi Lorem',
                ),

                
                Positioned(
                  right: 24,
                  bottom: 24,
                  child: Container(
                    width: size.width * 0.13,
                    height: size.width * 0.13,
                    decoration: const BoxDecoration(
                      color: Color(0xFF7FBC95),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 40,
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

  Widget _bookCard({
    required double top,
    required Size size,
    required String title,
    required String desc,
  }) {
    return Positioned(
      left: 20,
      right: 20,
      top: top,
      child: Container(
        height: size.height * 0.12,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF7FBC95),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: [

            
            Container(
              width: 70,
              height: 90,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            const SizedBox(width: 14),

            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900, 
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    desc,
                    style: TextStyle(
                      fontSize: size.width * 0.032,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            //edit tombol  
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFF54E15D),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(width: 10),

            //haous tombol
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFFFF0004),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.delete,
                  size: 20,
                  color: Colors.white, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
