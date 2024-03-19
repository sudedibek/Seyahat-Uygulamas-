import 'dart:ui';

import 'package:corap/asos.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(gezi());
}

class gezi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTravelAppWithBottomNav(),
    );
  }
}

class MyTravelAppWithBottomNav extends StatefulWidget {
  @override
  _MyTravelAppWithBottomNavState createState() =>
      _MyTravelAppWithBottomNavState();
}

class _MyTravelAppWithBottomNavState extends State<MyTravelAppWithBottomNav> {
  TextEditingController searchController = TextEditingController();
  int selectedIconIndex = 0;
  late List<List<bool>> isBookmarkedList;

  List<String> turkishCities = [
    'Aydın',
    'Balıkesir',
    'Çanakkale',
    'Eskişehir',
    'Gaziantep',
    'Hakkâri',
    'İstanbul',
    'Kars',
    'Malatya',
  ];

  final List<List<Map<String, String?>>> imageList = [
    [
      {'image': 'assos.jpg', 'name': 'Assos Behram Kale', 'city': 'Çanakkale'},
      {'image': 'buyukadaa.jpg', 'name': 'Büyükada', 'city': 'İstanbul'},
      {'image': 'efes.webp', 'name': 'Efes Antik', 'city': 'İzmir'},
      {'image': 'kizkule.jpg', 'name': 'Kız Kulesi', 'city': 'İstanbul'},
      {'image': 'safran.jpg', 'name': 'Safranbolu Evleri', 'city': 'Karabük'},
      {'image': 'sirincee.jpg', 'name': 'Şirince Köyü', 'city': 'İzmir'},
      {'image': 'sumela.jpg', 'name': 'Sümela Manastırı', 'city': 'Trabzon'},
      {'image': 'termessos.jpg', 'name': 'Termessos', 'city': 'Antalya'},
      {'image': 'truvva.jpg', 'name': 'Truva Antik Kenti', 'city': 'Çanakkale'},
    ],
    [
      {
        'image': 'ayairini.webp',
        'name': 'Aya Irini Müzesi',
        'city': 'İstanbul,'
      },
      {
        'image': 'ayasofya.jpg',
        'name': 'Ayasofya Müzesi',
        'city': 'İstanbul',
      },
      {
        'image': 'baksi.jpg',
        'name': 'Baksı Müzesi',
        'city': 'Bayburt',
      },
      {
        'image': 'corumm.jpg',
        'name': 'Çorum Müzesi',
        'city': 'Çorum',
      },
      {
        'image': 'zeugma.jpg',
        'name': 'Zeugma Mozaik Müzesi',
        'city': 'Antalya',
      },
      {
        'image': 'etnografya.webp',
        'name': 'Ankara Etnografya Müzesi',
        'city': 'Ankara',
      },
      {
        'image': 'ist_arkeoloji.jpg',
        'name': 'İstanbul Arkeoloji Müzesi',
        'city': 'İstanbul',
      },
      {
        'image': 'medeniyet.jpeg',
        'name': 'Anadolu Medeniyetler Müzesi',
        'city': 'Ankara',
      },
      {
        'image': 'topkappi.jpg',
        'name': 'Topkapı Sarayı',
        'city': 'İstanbul',
      },
    ],
    [
      {
        'image': 'hisaralan.webp',
        'name': 'Hisaralan Kaplıcası',
        'city': 'Balıkesir',
      },
      {'image': 'kaz.jpg', 'name': 'Kaz Dağları', 'city': 'Trabzon'},
      {
        'image': 'manavgat.webp',
        'name': 'Manavgat Şelalesi',
        'city': 'Antalya'
      },
      {
        'image': 'nemrut.webp',
        'name': 'Nemrut Dağı Milli Parkı',
        'city': 'Adıyaman',
      },
      {
        'image': 'pamukkale.jpg',
        'name': 'Pamukkale Travertenleri',
        'city': 'Denizli',
      },
      {
        'image': 'peri.jpg',
        'name': 'Peri Bacaları',
        'city': 'Kapadokya',
      },
      {
        'image': 'porsuk.jpg',
        'name': 'Sazova Parkı',
        'city': 'Trabzon',
      },
      {'image': 'tuz_gol.jpg', 'name': 'Tuz Gölü', 'city': 'Ankara'},
      {'image': 'tuz_magara.webp', 'name': 'Tuz Mağarası', 'city': 'Çankırı'},
    ],
    [
      {'image': 'arkas.jpg', 'name': 'Arkas Sanat Merkezi', 'city': 'İzmir'},
      {
        'image': 'dolmabahce.jpg',
        'name': 'Dolmabahçe Sanat Galerisi',
        'city': 'İstanbul'
      },
      {
        'image': 'heritage.jpg',
        'name': 'Heritage Nomadic Art Gallery',
        'city': 'İstanbul',
      },
      {'image': 'kilim.jpg', 'name': 'Kilim Art Gallery', 'city': 'Nevşehir'},
      {
        'image': 'kirliciki.webp',
        'name': 'Kirli Çıkı Sanat Galerisi',
        'city': 'İzmir',
      },
      {
        'image': 'macka.jpg',
        'name': 'Maçka Modern Sanat Galerisi',
        'city': 'İstanbul',
      },
      {'image': 'oda.jpg', 'name': 'Oda Art Gallery', 'city': 'Eskişehir'},
      {'image': 'salt.jpg', 'name': 'Salt', 'city': 'İstanbul'},
      {'image': 'tugra.jpg', 'name': 'Tugra Art Gallery', 'city': 'İstanbul'},
      {
        'image': 'yapikredi.jpg',
        'name': 'Yapı Kredi Kazım Taşkent Sanat Galerisi',
        'city': 'İstanbul'
      },
    ],
    [
      {'image': 'ankamall.jpg', 'name': 'Ankamall', 'city': 'Ankara'},
      {'image': 'cevahir.png', 'name': 'Cevahir AVM', 'city': 'İstanbul'},
      {'image': 'emaar.jpg', 'name': 'Emaar Square', 'city': 'İstanbul'},
      {
        'image': 'forumbornova.jpg',
        'name': 'Forum Bornova',
        'city': 'İzmir',
      },
      {'image': 'forumist.jpg', 'name': 'Forum İstanbul', 'city': 'İstanbul'},
      {
        'image': 'istinyepark.jpg',
        'name': 'İstinye Park AVM',
        'city': 'İstanbul',
      },
      {'image': 'mallof.jpg', 'name': 'Mall of İstanbul', 'city': 'İstanbul'},
      {
        'image': 'marmaraforum.webp',
        'name': 'Marmara Forum AVM',
        'city': 'İstanbul',
      },
      {'image': 'marmarapark.jpg', 'name': 'MarmaraPark', 'city': 'İstanbul'},
      {
        'image': 'vadist.webp',
        'name': 'Vadistanbul AVM',
        'city': 'İstanbul',
      },
    ],
  ];

  @override
  void initState() {
    super.initState();
    isBookmarkedList = List.generate(
      imageList.length,
      (categoryIndex) =>
          List.generate(imageList[categoryIndex].length, (index) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 1),
            Align(
              alignment: Alignment.center,
              child: Text(
                'TÜRKİYE',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      blurRadius: 1.0,
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 130,
                  width: 467,
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8.0),
                      hintText: 'Ara...',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(107, 223, 182, 172),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.0),
          if (searchController.text.isNotEmpty)
            ...turkishCities
                .where((city) => city
                    .toLowerCase()
                    .startsWith(searchController.text.toLowerCase()))
                .map((filteredCity) => ListTile(
                      title: InkWell(
                        onTap: () {
                          searchController.text = filteredCity.substring(0, 1);
                          setState(() {});
                        },
                        child: Text(filteredCity),
                      ),
                    ))
                .toList(),
          Padding(
            padding: const EdgeInsets.only(
                top: 40.0, left: 16.0, right: 16.0, bottom: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildHoverIcon(
                        0, Icons.attractions, 23, "Gezilecek Yerler"),
                    buildHoverIcon(1, Icons.account_balance, 20, "Müze"),
                    buildHoverIcon(2, Icons.nature_people, 20, "Doğa ve Park"),
                    buildHoverIcon(3, Icons.vrpano, 20, "Sanat Galerisi"),
                    buildHoverIcon(4, Icons.local_mall, 18, "AVM"),
                  ],
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: imageList[selectedIconIndex].map((item) {
                        final index =
                            imageList[selectedIconIndex].indexOf(item);
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => asos(),
                                ),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/${item['image']!}',
                                    width: 200.0,
                                    height: 300.0,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    top: 8.0,
                                    right: 8.0,
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          isBookmarkedList[selectedIconIndex]
                                                  [index] =
                                              !isBookmarkedList[
                                                  selectedIconIndex][index];
                                        });
                                        print(
                                            'Bookmark added for ${item['name']}');
                                      },
                                      child: Icon(
                                        Icons.bookmark,
                                        color:
                                            isBookmarkedList[selectedIconIndex]
                                                    [index]
                                                ? Colors.black
                                                : Colors.white,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(53, 253, 252, 255),
                                            Color.fromARGB(198, 223, 182, 172),
                                            Color.fromARGB(255, 223, 182, 172),
                                          ],
                                        ),
                                      ),
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                size: 12,
                                                color: Colors.black,
                                              ),
                                              SizedBox(width: 4.0),
                                              Text(
                                                item['city']!,
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4.0),
                                          Text(
                                            item['name']!,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 60,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: IconButton(
          icon: Icon(Icons.g_translate),
          onPressed: _showLanguagePicker,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(107, 223, 182, 172),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                _showUserProfile(); // Kullanıcı profili ekranını göster
              },
              color: Colors.black,
            ),
            IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () {
                _showBookmarks(); // Yer işareti ekranını göster
              },
              color: Colors.black,
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Favori butonuna basıldığında yapılacak işlem
              },
              color: Colors.black,
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Profil butonuna basıldığında yapılacak işlem
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHoverIcon(int index, IconData icon, double size, String label) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIconIndex = index;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: selectedIconIndex == index
                  ? Color.fromARGB(107, 223, 182, 172)
                  : const Color.fromARGB(0, 68, 31, 31),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(
              icon,
              size: selectedIconIndex == index ? size + 3 : size,
              color: selectedIconIndex == index ? Colors.black : Colors.black,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: selectedIconIndex == index ? Colors.black : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void _showUserProfile() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Kullanıcı Profili'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/a.jpg'),
              radius: 30,
            ),
            SizedBox(height: 10),
            Text('Adı Soyadı: John Doe'),
            Text('E-posta: john.doe@example.com'),
            SizedBox(height: 20),
            _buildProfileButton(Icons.settings, 'Settings'),
            _buildProfileButton(Icons.help, 'Help'),
            _buildProfileButton(Icons.exit_to_app, 'Logout'),
            _buildProfileButton(Icons.edit, 'Edit Profile'),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Kapat'),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileButton(IconData icon, String label) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextButton(
        onPressed: () {
          // İlgili butona basıldığında yapılacak işlemler
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Colors.black,
              ),
              SizedBox(width: 8.0),
              Text(
                label,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLanguagePicker() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildLanguageOption('Türkçe'),
                _buildLanguageOption('English'),
                _buildLanguageOption('Español'),
                _buildLanguageOption('Français'),
                _buildLanguageOption('Deutsch'),
                _buildLanguageOption('Italiano'),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLanguageOption(String language) {
    return ListTile(
      title: Text(language),
      onTap: () {
        // Dil seçildiğinde yapılacak işlemler
        print('$language diline geçildi');
        Navigator.of(context).pop(); // Bottom sheet'i kapat
      },
    );
  }

  void _showBookmarks() {
    List<Map<String, String>> bookmarkedItems = [];

    for (int i = 0; i < turkishCities.length; i++) {
      if (isBookmarkedList[selectedIconIndex][i]) {
        Map<String, String?> currentItem = imageList[selectedIconIndex][i];
        Map<String, String> nonNullableItem = {};

        currentItem.forEach((key, value) {
          nonNullableItem[key] = value ?? '';
        });

        bookmarkedItems.add(nonNullableItem);
      }
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Kaydedilenler'),
        content: Column(
          children: [
            for (var item in bookmarkedItems)
              ListTile(
                title: Text(item['name']!),
              ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Kapat'),
          ),
        ],
      ),
    );
  }
}
