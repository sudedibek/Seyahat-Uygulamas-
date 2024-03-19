import 'package:corap/arama.dart'; // arama.dart dosyasından arama sınıfını içeri aktar

import 'package:flutter/material.dart';

class giris extends StatelessWidget {
  const giris({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Kullanıcı Adı', // Kullanıcı adı etiketi
                      labelStyle:
                          TextStyle(color: Colors.white), // Etiket rengi
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white), // Odaklanınca alt çizgi rengi
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10), // Boşluk
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true, // Şifre gizleme
                    decoration: InputDecoration(
                      labelText: 'Şifre', // Şifre etiketi
                      labelStyle:
                          TextStyle(color: Colors.white), // Etiket rengi
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white), // Odaklanınca alt çizgi rengi
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Boşluk
              Container(
                width: 200, // Buton uzunluğu
                child: TextButton(
                  onPressed: () {
                    // Giriş butonu işlemleri burada gerçekleştirilebilir
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              arama()), // arama sınıfına geçiş yap
                    );
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(1), // Buton kenar yuvarlaklığı
                    ),
                    backgroundColor: Color.fromARGB(
                        255, 244, 244, 244), // Buton arka plan rengi
                  ),
                  child: Text(
                    'Giriş', // Buton metni
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), // Buton metin rengi
                      fontStyle: FontStyle.italic, // Metin stili
                      fontWeight: FontWeight.bold, // Metin kalınlığı
                      fontFamily: 'DancingScript', // Metin fontu
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
}
