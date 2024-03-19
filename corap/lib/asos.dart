import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const asos());
}

class asos extends StatelessWidget {
  const asos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ResimKaruseli(),
    );
  }
}

class ResimKaruseli extends StatefulWidget {
  const ResimKaruseli({Key? key}) : super(key: key);

  @override
  _ResimKaruseliState createState() => _ResimKaruseliState();
}

class _ResimKaruseliState extends State<ResimKaruseli> {
  final List<String> resimYollari = [
    "assets/images/11.png",
    "assets/images/12.jpg",
    "assets/images/13.jpg",
  ]; // Gösterilecek resimlerin yolları

  late PageController _sayfaController;
  late int _mevcutSayfa;

  @override
  void initState() {
    super.initState();
    _mevcutSayfa = 0;
    _sayfaController = PageController(initialPage: _mevcutSayfa);

    // Her 3 saniyede bir resmi otomatik değiştirme
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_mevcutSayfa < resimYollari.length - 1) {
        _mevcutSayfa++;
      } else {
        _mevcutSayfa = 0;
      }
      _sayfaController.animateToPage(
        _mevcutSayfa,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _sayfaController.dispose();
    super.dispose();
  }

  void _openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 400, // Bottom sheet yüksekliği
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                left: 20.0,
                top: 20.0,
                child: Text(
                  'Asos Behram Kale ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: 300.0,
                top: 50.0,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 154, 153, 107),
                    borderRadius: BorderRadius.circular(1.0),
                  ),
                  child: Row(
                    children: [
                      Text(
                        ' Ücreti: \25TL',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality for the button
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 231, 235, 231),
                        ),
                        child: Text('Ödeme'),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 5.0,
                top: 60.0,
                child: Row(
                  children: [
                    _buildIconWithText(Icons.check, 'Tarih ve Kültür Zengin'),
                    SizedBox(width: 8.0),
                    _buildIconWithText(Icons.check, 'Fotoğraf Çekmek Serbest'),
                  ],
                ),
              ),
              Positioned(
                left: 5.0,
                top: 90.0,
                child: Row(
                  children: [
                    _buildIconWithText(Icons.check, 'Rehber Turları Var'),
                    SizedBox(width: 8.0),
                    _buildIconWithText(Icons.check, 'Müze Kartı Geçerli'),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                top: 120.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hakkında bilgi',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1.0),
                    Text(
                      "Behramkale Köyü, Osmanlı döneminde kurulmuş eski bir köy. Antik şehir,",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      "yüzünü güneye yani denize dönmüşken, köyün yerleşimi ters tarafa",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      "doğru kurulmuş. Köy antik kent surları içinde yer alması ile dikkat çekiyor.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      "Sadece 150 haneli küçük bir yerleşim.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                top: 240.0, // İhtiyaca göre üst pozisyonu ayarlayın
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Galeri',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        children: [
                          _buildImageWidget('assets/images/20.jpg'),
                          SizedBox(width: 8),
                          _buildImageWidget('assets/images/19.jpg'),
                          SizedBox(width: 8),
                          _buildImageWidget('assets/images/18.jpg'),
                          SizedBox(width: 8),
                          _buildImageWidget('assets/images/17.jpg'),
                          SizedBox(width: 8),
                          _buildImageWidget('assets/images/16.jpg'),
                          SizedBox(width: 8),
                          _buildImageWidget('assets/images/15.jpg'),
                          SizedBox(width: 8),
                          _buildImageWidget('assets/images/14.jpg'),
                          SizedBox(width: 8),
                          _buildImageWidget('assets/images/13.jpg'),
                          SizedBox(width: 8),
                          _buildImageWidget('assets/images/12.webp'),
                          SizedBox(width: 8),
                          _buildImageWidget('assets/images/11.jpg'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildIconWithText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.green),
        SizedBox(width: 3.0),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              // Sağ üst köşedeki kalp ikonuna basıldığında yapılacak işlemleri buraya ekleyebilirsiniz
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: _sayfaController,
            itemCount: resimYollari.length,
            onPageChanged: (int index) {
              setState(() {
                _mevcutSayfa = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: _openBottomSheet,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(resimYollari[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildImageWidget(String fotoYolu) {
    return Image.asset(
      fotoYolu,
      width: 80.0, //  genişliği
      height: 90.0, //  yüksekliği
      fit: BoxFit.cover,
    );
  }
}
