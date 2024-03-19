import 'package:flutter/material.dart'; // Flutter SDK'sının Material bileşenlerini içeren paket

class ilkekran extends StatelessWidget {
  const ilkekran({Key? key}); // ilkekran sınıfı için bir constructor

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
            context, "/ikinciekran"); // "ikinciekran" rotasına geçişi sağlar
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 237, 208, 194), // Arka plan rengi 1
              Color.fromARGB(255, 169, 173, 181), // Arka plan rengi 2
            ],
          ),
        ),
        child: Center(
          child: ClipOval(
            child: Container(
              width: 200, // Resim genişliği
              height: 200, // Resim yüksekliği
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/icon1.png'), // AssetImage ile resmin yolunu belirler
                  fit: BoxFit.cover, // Resmi uygun şekilde yerleştirir
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
