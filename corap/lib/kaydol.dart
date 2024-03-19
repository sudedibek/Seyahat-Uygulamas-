import 'package:corap/arama.dart'; // arama.dart dosyasından arama sınıfını içeri aktar
import 'package:flutter/material.dart';

class kaydol extends StatelessWidget {
  const kaydol({Key? key}) : super(key: key);

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
                      labelText: 'İsim', // İsim etiketi
                      labelStyle:
                          TextStyle(color: Colors.white), // Etiket rengi
                      prefixIcon: Icon(
                        Icons.person, // İsim için simge
                        color: Colors.white, // Simge rengi
                      ),
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
                    decoration: InputDecoration(
                      labelText: 'email', // E-posta etiketi
                      labelStyle:
                          TextStyle(color: Colors.white), // Etiket rengi
                      prefixIcon: Icon(
                        Icons.email, // E-posta için simge
                        color: Colors.white, // Simge rengi
                      ),
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
                    obscureText: true, // Şifreyi gizle
                    decoration: InputDecoration(
                      labelText: 'şifre', // Şifre etiketi
                      labelStyle:
                          TextStyle(color: Colors.white), // Etiket rengi
                      prefixIcon: Icon(
                        Icons.lock, // Şifre için simge
                        color: Colors.white, // Simge rengi
                      ),
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
                    // Hesap oluşturma butonu işlemleri burada gerçekleştirilebilir
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
                    ' Hesap oluştur', // Buton metni
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
