import 'package:corap/kaydol.dart';
import 'package:flutter/material.dart';
import 'giris.dart'; // giris.dart dosyanızın doğru yolunu ekleyin

class ikinciekran extends StatelessWidget {
  const ikinciekran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/icon2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Giriş butonu işlemleri burada gerçekleştirilebilir
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            giris()), // GirisPage() doğru sayfa adınızı içermelidir
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary:
                      Color.fromARGB(255, 253, 254, 255), // Arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        1), // Köşelerin oval olmaması için
                  ),
                  fixedSize: Size(300, 20), // Genişlik ve yükseklik
                ),
                child: Text(
                  'Giriş',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), // gri renk
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontFamily:
                        'DancingScript', // DancingScript-Bold.ttf fontunu kullan
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Giriş butonu işlemleri burada gerçekleştirilebilir
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            kaydol()), // GirisPage() doğru sayfa adınızı içermelidir
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(
                      255, 253, 254, 255), // Arka plan rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        1), // Köşelerin oval olmaması için
                  ),
                  fixedSize: Size(300, 20), // Genişlik ve yükseklik
                ),
                child: Text(
                  'Hesap Oluştur',
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    color: Color.fromARGB(255, 0, 0, 0), // gri rengi
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    // Kalın yazı
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
