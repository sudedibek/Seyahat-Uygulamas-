import 'package:flutter/material.dart';

class otel extends StatelessWidget {
  const otel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konaklama'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: PhotoGallery(),
    );
  }
}

class PhotoGallery extends StatelessWidget {
  final List<String> imagePaths = [
    "assets/images/hotel1.png",
    "assets/images/hotel2.png",
    "assets/images/hotel3.png",
    "assets/images/hotel4.png",
    "assets/images/hotel5.png",
    "assets/images/hotel6.png",
    "assets/images/hotel7.png",
    "assets/images/hotel8.png",
    "assets/images/hotel9.png",
    "assets/images/hotel10.png",
  ];

  final List<String> captions = [
    "Delphin Imperial Hotel",
    "DAS 3917",
    "Museum Hotel",
    "Titanic Deluxe Golf Belek",
    "Liberty Hotels Lara",
    "Four Seasons Hotel Istanbul",
    "Akrones Hotel",
    "Mardius Tarihi Konak",
    "Dudi Konak",
    "Teona Bungalov",
  ];

  final List<String> locations = [
    "Yaşar Sobutay Bulvarı No:344, Kemerağzı, Antalya Türkiye",
    "Tekir Yaylası, Küme Evleri No. 126, Hisarcık Erciyes/Türkiye",
    "Tekelli Mahallesi No.1, Uçhisar 50240 Türkiye",
    "Kadriye Mah. Uckum Tepesi Mevkii, Besgoz Cad. No: 72/1,Belek",
    "Kemeragzi Mah. Yasar Sobutay Bulv. No: 64,Antalya Türkiye",
    "Tevkifhane Sokak No. 1 Sultanahmet, İstanbul 34122 Türkiye",
    "Dörtyol Mah. Turgut Özal Cad. No: 38, Afyonkarahisar Türkiye",
    "Teker Mahallesi 94. Sirin Sokak Artuklu /Merkez, Mardin Türkiye",
    "Konaklar Mahallesi Konaklar No: 12, Çamlıhemşin 53750 Türkiye",
    "Özerler, Çağlayan Köyü Yolu 9/2, Fındıklı 53700 Türkiye",
  ];

  final List<int> prices = [
    150,
    200,
    180,
    250,
    170,
    300,
    190,
    210,
    160,
    220,
  ];

  // Özel özellikler listesi
  final List<List<String>> otelOzellikleri = [
    ["Kahvaltı", "Suit Odalar", "Ücretsiz Wifi", "Fitness"],
    ["Kahvaltı", "Oda Servisi", "Ücretsiz Wifi", "Otopark"],
    ["Ücretsiz ", "Oda Temizliği", "Sigara İçilmeyen Odalar"],
    ["Bar", "Su Sporları", "Restoran", "Havuz", "Plaj"],
    ["Bar", "Havuz", "Plaj", "Havalimanı ulaşım"],
    ["Spa", "Restoran", "Bar", "Toplantı odası", "SUİT"],
    [" Wifi", "Sigara İçilmeyen Oda", "Otopark", "SPA"],
    ["Kahvaltı", "Wifi", "Restorant", "Hamam"],
    ["Dağ Yürüyüşü", "Oda Temizliği", "Kayak", "Şömine"],
    ["Dağ Yürüyüşü", "Oda Temizliği", "Kayak", "Şömine"],
  ];

  // Iconlar listesi
  final List<List<IconData>> otelIconlar = [
    [Icons.free_breakfast, Icons.hotel, Icons.wifi, Icons.fitness_center],
    [Icons.free_breakfast, Icons.room_service, Icons.wifi, Icons.local_parking],
    [Icons.free_breakfast, Icons.cleaning_services, Icons.smoking_rooms],
    [
      Icons.local_bar,
      Icons.pool,
      Icons.restaurant,
      Icons.pool,
      Icons.beach_access
    ],
    [Icons.local_bar, Icons.pool, Icons.beach_access, Icons.airport_shuttle],
    [
      Icons.spa,
      Icons.restaurant,
      Icons.local_bar,
      Icons.meeting_room,
      Icons.apartment
    ],
    [Icons.wifi, Icons.smoking_rooms, Icons.local_parking, Icons.spa],
    [Icons.free_breakfast, Icons.wifi, Icons.restaurant, Icons.hot_tub],
    [
      Icons.landscape,
      Icons.cleaning_services,
      Icons.snowboarding,
      Icons.fireplace
    ],
    [
      Icons.landscape,
      Icons.cleaning_services,
      Icons.snowboarding,
      Icons.fireplace
    ],
  ];

  // Her bir incele butonuna tıklandığında gösterilecek fotoğraflar
  final List<List<String>> galleryImagePaths = [
    [
      "assets/images/delp1.png",
      "assets/images/delp2.png",
      "assets/images/delp3.png",
      "assets/images/delp4.png",
      "assets/images/delp5.png"
    ],
    [
      "assets/images/das1.png",
      "assets/images/das2.png",
      "assets/images/das3.png",
      "assets/images/das4.png",
      "assets/images/das5.png"
    ],
    [
      "assets/images/mus1.png",
      "assets/images/mus2.png",
      "assets/images/mus3.png",
      "assets/images/mus4.png",
      "assets/images/mus5.png"
    ],
    [
      "assets/images/tit1.png",
      "assets/images/tit2.png",
      "assets/images/tit3.png",
      "assets/images/tit4.png",
      "assets/images/tit5.png"
    ],
    [
      "assets/images/lib1.png",
      "assets/images/lib2.png",
      "assets/images/lib3.png",
      "assets/images/lib4.png",
      "assets/images/lib5.png"
    ],
    [
      "assets/images/fo1.png",
      "assets/images/fo2.png",
      "assets/images/fo3.png",
      "assets/images/fo4.png",
      "assets/images/fo5.png"
    ],
    [
      "assets/images/ak1.png",
      "assets/images/ak2.png",
      "assets/images/ak3.png",
      "assets/images/ak4.png",
      "assets/images/ak5.png"
    ],
    [
      "assets/images/ma1.png",
      "assets/images/ma2.png",
      "assets/images/ma3.png",
      "assets/images/ma4.png",
      "assets/images/ma5.png"
    ],
    [
      "assets/images/du1.png",
      "assets/images/du2.png",
      "assets/images/du3.png",
      "assets/images/du4.png",
      "assets/images/du5.png"
    ],
    [
      "assets/images/te1.png",
      "assets/images/te2.png",
      "assets/images/te3.png",
      "assets/images/te4.png",
      "assets/images/te5.png"
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imagePaths.length,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 237, 208, 194),
                  width: 30,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  imagePaths[index],
                  fit: BoxFit.fill,
                  height: 180,
                  width: MediaQuery.of(context).size.width - 80,
                ),
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(53, 253, 252, 255),
                      Color.fromARGB(198, 223, 182,
                          172), // Şeffaflık ekleyerek bulanık görünüm
                      Color.fromARGB(255, 223, 182, 172), // Gerçek renk
                    ],
                  ),
                ),
                height: 120,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      captions[index],
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: const Color.fromARGB(255, 2, 2, 2),
                          size: 15,
                        ),
                        SizedBox(width: 1),
                        Text(
                          locations[index],
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 420,
              bottom: 45,
              child: Text(
                "/gecelik",
                style: TextStyle(
                  color: const Color.fromARGB(255, 8, 8, 8),
                  fontSize: 12,
                ),
              ),
            ),
            Positioned(
              top: 188,
              right: 40,
              child: Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(0, 85, 23, 178),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      "\$${prices[index]}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 10,
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(255, 2, 2, 2),
                  ),
                  color: Color.fromARGB(206, 0, 0, 0),
                ),
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 180, 143, 134),

                                  Color.fromARGB(198, 223, 182,
                                      172), // Şeffaflık ekleyerek bulanık görünüm
                                  Color.fromARGB(23, 4, 4, 4), // Gerçek renk
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Otel Özellikleri",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Wrap(
                                  spacing: 2.0,
                                  runSpacing: 1.0,
                                  children: List.generate(
                                    otelOzellikleri[index].length,
                                    (i) => Chip(
                                      avatar: Icon(
                                        otelIconlar[index][i],
                                        color: Color.fromARGB(255, 169, 30, 30),
                                      ),
                                      label: Text(
                                        otelOzellikleri[index][i],
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 136, 22, 22)),
                                      ),
                                      backgroundColor:
                                          Color.fromARGB(107, 171, 164, 147),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Galeri",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 150,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: galleryImagePaths[index].length,
                                    itemBuilder: (BuildContext context, int i) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            galleryImagePaths[index][i],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "İncele",
                    style: TextStyle(
                      color: Color.fromARGB(235, 218, 193, 151),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: otel(),
  ));
}
