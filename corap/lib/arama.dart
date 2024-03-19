import 'package:flutter/material.dart';

class arama extends StatelessWidget {
  const arama({Key? key}); // Boş bir constructor tanımı

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
            context, "/secenek"); // Tıklanınca "/secenek" sayfasına yönlendirme
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 237, 208, 194),
              Color.fromARGB(255, 169, 173, 181),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  width: 200, // Resim genişliği
                  height: 200, // Resim yüksekliği
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/icon1.png'), // Görüntü kaynağı
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16), // Boşluk
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,
                      "/secenek"); // Butona basınca "/secenek" sayfasına yönlendirme
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Buton arka plan rengi
                  onPrimary: Colors.black, // Yazı rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Butonun kenar yuvarlaklığı
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.search, // Ara ikonu
                      color: Colors.black, // İkon rengi
                      size: 40, // İkon boyutu
                    ),
                    SizedBox(width: 8), // Boşluk
                    Text(
                      'Ara', // Buton metni
                      style: TextStyle(
                        fontSize: 20, // Yazı boyutu
                        fontWeight: FontWeight.bold, // Yazı kalınlığı
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
