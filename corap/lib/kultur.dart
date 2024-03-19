import 'package:flutter/material.dart';

class PhotoInfo {
  final String imagePath;
  final String caption;
  final String location;
  final String content;

  PhotoInfo({
    required this.imagePath,
    required this.caption,
    required this.location,
    required this.content,
  });
}

class kultur extends StatelessWidget {
  const kultur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kültür'),
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
  final List<PhotoInfo> photos = [
    PhotoInfo(
      imagePath: "assets/images/mutfak.webp",
      caption: "Yöresel Yemek",
      location: "Restoran",
      content:
          "Beslenme biçimleri, içinde bulunulan kültürel- coğrafi- ekolojik- ekonomik yapıya ve tarihsel sürece göre şekillenmektedir.Türk mutfağı denildiğinde Türkiye'de yaşayan insanların beslenmesini sağlayan yiyecekler- içecekler, bunların hazırlanması, pişirilmesi, korunması; bu işlemler için gerekli araç-gereç ve teknikler ile yemek yeme adabı ve mutfak çevresinde gelişen tüm uygulamalar ve inanışlar anlaşılmalıdır.Türk mutfağındaki çeşit zenginliği bir çok etkene bağlıdır.",
    ),
    PhotoInfo(
      imagePath: "assets/images/bayram.jpg",
      caption: "Milli Bayram",
      location: "Aile Evi",
      content:
          "Milli bayramlar, ulusal birliği ve dayanışmayı kutladığımız önemli günlerdir. Aileler, milli bayramları sevdikleriyle bir araya gelerek özel yemekler pişirir ve geleneksel ritüeller gerçekleştirir.",
    ),
    PhotoInfo(
      imagePath: "assets/images/halk.jpg",
      caption: "Halk Oyunları ",
      location: "Şehir Parkı",
      content:
          "Halk oyunları düğünlerde, nişanlarda, askere uğurlamada, yaylaya çıkış ve inişte, doğumda, dini ve milli bayramlarda, kazanılan zaferin sonucunda, ferfene, barana, sıra gezmesi, yaren sohbeti gibi toplantılarda oynanmaktadır. Oyunlar genellikle oyun oynamaya elverişli açık alanlarda oynandığı gibi kapalı yerlerde oynanır.",
    ),
    PhotoInfo(
        imagePath: "assets/images/müzik.jpg",
        caption: " Müzik Kültürü",
        location: "Müzikhol",
        content:
            "Genel kültürel yapıdaki bu zenginlik doğal olarak müzik kültürümüze de yansımaktadır.Türkiye coğrafyasında oluşmuş ve yaşayan müzik türlerini genel bir yaklaşımla üç başlık altında toplayabiliriz: Geleneksel, çağdaş ve popüler müzik."),
    PhotoInfo(
      imagePath: "assets/images/gelenek.webp",
      caption: "Geleneksel Sanatlar",
      location: "Köy Meydanı",
      content:
          "Geleneksel Türk El Sanatlarını; halıcılık, kilimcilik, cicim zili, sumak, kumaş dokumacılığı, yazmacılık, çinicilik, seramik-çömlek yapımcılığı, işlemecilik, oya yapımcılığı, deri işçiliği, müzik aletleri yapımcılığı, taş işçiliği, bakırcılık, sepetçilik, semercilik, maden işçiliği, keçe yapımcılığı, örmecilik, ahşap ve ağaç işçiliği, arabacılık vb. sıralanabilir.Geleneksel el sanatlarımızdan dokumaların hammaddeleri yün, tiftik, pamuk, kıl ve ipekten sağlanmaktadır.",
    ),
    PhotoInfo(
      imagePath: "assets/images/dogum.jpg",
      caption: "Doğum Gelenekleri",
      location: "Ev",
      content:
          "Geçiş dönemlerinde ilki olan doğum dünyanın her yerinde olduğu gibi Anadolu’da da her zaman mutlu bir olay olarak kabul edilmiştir.Dünyaya gelen her çocuk sadece anne babanın değil aynı zamanda akrabaları,komşuları,soyu ve sopu da sevindirmektedir.Çünkü her doğum ailenin akrabaların soyun,sopun sayısını artırmaktadır.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photos.length,
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
                  photos[index].imagePath,
                  fit: BoxFit.fill,
                  height: 300,
                  width: MediaQuery.of(context).size.width - 50,
                ),
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              bottom: 0, // Değeri buraya ayarlayın
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(207, 253, 252, 255),
                      Color.fromARGB(198, 223, 182, 172),
                      Color.fromARGB(255, 223, 182, 172),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      photos[index].caption,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      photos[index].content,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ),
                    ),
                  ],
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
    home: kultur(),
  ));
}
