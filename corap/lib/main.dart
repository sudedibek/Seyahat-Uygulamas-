import 'package:corap/kultur.dart'; // Kültür sayfasının bulunduğu dosya
import 'package:flutter/material.dart'; // Flutter SDK'sının Material bileşenlerini içeren paket
import 'otel.dart'; // Oteller sayfasının bulunduğu dosya
import 'gezi.dart'; // Gezi sayfasının bulunduğu dosya
import 'secenek.dart'; // Seçenekler sayfasının bulunduğu dosya
import 'arama.dart'; // Arama sayfasının bulunduğu dosya
import 'kaydol.dart'; // Kaydolma sayfasının bulunduğu dosya
import 'giris.dart'; // Giriş sayfasının bulunduğu dosya
import 'ikinciekran.dart'; // İkinci ekran sayfasının bulunduğu dosya
import 'ilkekran.dart'; // İlk ekran sayfasının bulunduğu dosya
import 'kultur.dart'; // Kültür sayfasının bulunduğu dosya
import 'yemek.dart';
import 'asos.dart'; // Yemek sayfasının bulunduğu dosya

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Debug banner'ın gösterilmesini kontrol eder
      routes: {
        '/ikinciekran': (context) =>
            ikinciekran(), // İkinci ekran için rotayı belirler
        '/ilkekran': (context) => ilkekran(), // İlk ekran için rotayı belirler
        '/giris': (context) => giris(), // Giriş sayfası için rotayı belirler
        '/kaydol': (context) =>
            kaydol(), // Kaydolma sayfası için rotayı belirler
        '/secenek': (context) =>
            secenek(), // Seçenekler sayfası için rotayı belirler
        '/arama': (context) => arama(), // Arama sayfası için rotayı belirler
        '/otel': (context) => otel(), // Oteller sayfası için rotayı belirler
        '/gezi': (context) => gezi(), // Gezi sayfası için rotayı belirler
        '/kultur': (context) => kultur(), // Kültür sayfası için rotayı belirler
        '/yemek': (context) => yemek(),
        '/asos': (context) => asos(), // Yemek sayfası için rotayı belirler
      },
      initialRoute: '/ilkekran', // Başlangıç rotasını belirler
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black), // Renk şemasını belirler
        useMaterial3: true, // Material 3 kullanımını kontrol eder
      ),
    );
  }
}
