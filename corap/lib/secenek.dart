import 'package:flutter/material.dart';

class secenek extends StatelessWidget {
  const secenek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Yığın widgeti, arka plan ve örtüşen ögeleri düzenlemek için kullanılır.
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/imag.jpg"), // Arka plan resmi
                fit: BoxFit.cover, // Resmin container'a sığdırılması
              ),
            ),
          ),
          Positioned(
            top: 30, // Arama kutusunu üste taşı
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(150.0), // Yuvarlatılmış köşeler
                color: Color.fromARGB(255, 255, 255, 255), // Beyaz arka plan
              ),
              child: TextField(
                // Arama kutusu
                decoration: InputDecoration(
                  hintText: 'Ara...', // Arama kutusu ipucu metni
                  hintStyle:
                      TextStyle(color: Colors.black), // İpucu metin rengi
                  prefixIcon: Icon(Icons.search), // Arama simgesi
                  border: InputBorder.none, // Kenarlık olmadan
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20, // Alt menüyü alt kenara yerleştir
            left: 50,
            right: 30,
            child: Container(
              padding: EdgeInsets.all(50), // İç boşluklar
              height: 300, // Alt menü yüksekliği
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255), // Beyaz arka plan
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100), // Sol üst köşe yuvarlatma
                  topRight: Radius.circular(100), // Sağ üst köşe yuvarlatma
                ),
              ),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // Dikeyde düzenleme
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceAround, // Yatayda düzenleme
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context,
                                    "/yemek"); // Yeme/İçme ekranına gitme
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/icon.png", // Yemek/İçme simgesi
                                    width: 80,
                                    height: 80,
                                  ),
                                  Text("Yeme/İçme"), // Metin
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/otel"); // Otel ekranına gitme
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/e.png", // Otel simgesi
                                    width: 80,
                                    height: 80,
                                  ),
                                  Text("Otel",
                                      style: TextStyle(
                                          fontFamily: 'Arial')), // Metin
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceAround, // Yatayda düzenleme
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, "/kultur"); // Kültür ekranına gitme
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/d.png", // Kültür simgesi
                                width: 80,
                                height: 80,
                              ),
                              Text("Kültür"), // Metin
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, "/gezi"); // Gezi ekranına gitme
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/t.png", // Gezi simgesi
                                width: 80,
                                height: 80,
                              ),
                              Text("Gezi "), // Metin
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
