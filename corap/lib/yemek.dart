import 'package:flutter/material.dart';

void main() {
  runApp(yemek());
}

class yemek extends StatelessWidget {
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
      {'image': 'deniz.jpg', 'name': 'DENİZ RESTORAN', 'city': 'İzmir'},
      {'image': 'ferdi.jpg', 'name': 'FERDİ BABA', 'city': 'İzmir'},
      {'image': 'hacı.jpg', 'name': 'HACI BABA', 'city': 'Erzurum'},
      {'image': 'halil.jpg', 'name': 'HALİL USTA', 'city': 'Gaziantep'},
      {'image': 'hünkar.jpg', 'name': 'HÜNKAR', 'city': 'İstanbul'},
      {'image': 'kalbur.jpg', 'name': 'KALBUR', 'city': 'İzmir'},
      {'image': 'mehmet.jpg', 'name': 'MEHMET', 'city': 'Antalya'},
      {'image': 'mikla.jpg', 'name': 'MİKLA', 'city': 'İstanbul'},
      {'image': 'nihat.jpg', 'name': 'NİHAT USTA', 'city': 'Erzurum'},
      {'image': 'sofram.jpg', 'name': 'DENİZ RESTORAN', 'city': 'İstanbul'},
    ],
    [
      {
        'image': 'iskender.jpg',
        'name': 'BURSA KEBAPÇISI 1956',
        'city': 'Bursa,'
      },
      {
        'image': 'kokorec.jpg',
        'name': 'AKÇEŞME KOKOREÇ',
        'city': 'Denizli',
      },
      {
        'image': 'döner.jpg',
        'name': 'ULUDAĞ KEBAPÇISI',
        'city': 'İzmir',
      },
      {
        'image': 'gobit.jpg',
        'name': 'KANATLI FIRIN',
        'city': 'Eskişehir',
      },
      {
        'image': 'midye.jpg',
        'name': 'MİDYECİ AHMET',
        'city': 'İstanbul',
      },
      {
        'image': 'simit.jpg',
        'name': 'SİMİT DÜNYASI',
        'city': 'Manisa',
      },
      {
        'image': 'tantuni.jpg',
        'name': 'GÖKSEL TANTUNİ',
        'city': 'Mersin',
      },
      {
        'image': 'kokorec.jpg',
        'name': 'ASLANBOĞA KOKOREÇ',
        'city': 'Balıkesir',
      },
      {
        'image': 'kebap.jpg',
        'name': 'KEBAPÇI MESUT',
        'city': 'Adana',
      },
    ],
    [
      {
        'image': 'hafiz.jpg',
        'name': 'HAFIZ MUSTAFA 1864',
        'city': 'İstanbul',
      },
      {
        'image': 'odun.jpg',
        'name': ' ODUNPAZARI MODERN MUHALLEBİCİSİ',
        'city': 'Eskişehir'
      },
      {'image': 'mado.jpg', 'name': 'MADO', 'city': 'Ankara'},
      {
        'image': 'kültürel.jpg',
        'name': 'KÜLTÜREL TATLILAR EVİ',
        'city': 'İzmir',
      },
      {
        'image': 'şeyhmus.jpg',
        'name': ' ŞEYHMUS TATLICILIK',
        'city': 'Antalya',
      },
      {
        'image': 'karadeniz.jpg',
        'name': 'KARADENİZ PİDE ve TATLI EVİ',
        'city': 'Bursa',
      },
      {
        'image': 'koza.jpg',
        'name': ' KOZA PASTANESİi',
        'city': 'Adana',
      },
      {'image': 'pelit.jpg', 'name': ' PELİT FINDIK', 'city': 'Trabzon'},
      {'image': 'erciyes.jpg', 'name': 'ERCİYES PASTANESİ', 'city': 'Nevşehir'},
      {
        'image': 'ali.jpg',
        'name': 'ALİ BABA TATLI ve BAKLAVA SALONU',
        'city': 'Şanlıurfa'
      },
    ],
    [
      {'image': 'pierre.jpg', 'name': 'PİERRE LOTİ CAFE', 'city': 'İstanbul '},
      {'image': 'gordion.jpg', 'name': 'GORDİON CAFE', 'city': 'Ankara'},
      {
        'image': 'homeros.jpg',
        'name': 'HOMEROS VADİSİ',
        'city': 'İzmir',
      },
      {'image': 'mehmet.jpg', 'name': ' 7 MEHMET', 'city': 'Antalya'},
      {
        'image': 'sürmene.jpg',
        'name': 'SÜRMENE KUMRULU TEZBAŞ KAFE',
        'city': 'Trabzon',
      },
      {
        'image': 'odunpazarı.jpg',
        'name': 'ODUNPAZARI EVLERİ KAFE',
        'city': 'Eskişehir',
      },
      {
        'image': 'zincirli.jpg',
        'name': 'ZİNCİRLİ BEDESTEN CAFE',
        'city': 'Gaziantep'
      },
      {'image': 'mardin.jpg', 'name': 'MARDİN CAFE 47', 'city': 'Mardin'},
      {
        'image': 'nevali.jpg',
        'name': ' NEVALİ HOTEL ROOFTOP CAFE',
        'city': 'Şanlıurfa'
      },
      {'image': 'goodys.webp', 'name': ' GOODYS İZMİR MARİNA', 'city': 'İzmir'},
    ],
    [
      {'image': '360.jpg', 'name': '360 İSTANBUL', 'city': 'İstanbul'},
      {'image': 'route.jpg', 'name': 'ROUTE', 'city': 'Ankara '},
      {'image': 'kit.jpg', 'name': 'KİTCHENETTE KARŞIYAKA', 'city': 'İzmir'},
      {
        'image': 'aura.jpg',
        'name': 'AURA CLUB',
        'city': 'Antalya',
      },
      {'image': 'hali.jpg', 'name': 'HALİKARNAS THE CLUB', 'city': 'Muğla'},
      {
        'image': 'lüle.jpg',
        'name': 'LÜLETAŞI WİNE & MUSİC',
        'city': 'Eskişehir',
      },
      {'image': 'boz.jpg', 'name': 'BOZTEPEDE BİR GECE', 'city': 'Trabzon '},
      {
        'image': 'mas.jpg',
        'name': 'MASQUERADE CLUB',
        'city': 'Adana',
      },
      {'image': 'marina.jpg', 'name': 'Marina Beach Club', 'city': 'Mersin'},
      {
        'image': 'zeugma.jpg',
        'name': 'ZEUGMA BAR',
        'city': 'Gaziantep',
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
          SizedBox(height: 8.0),
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
                        0, Icons.restaurant, 23, "Geleneksel Restorant"),
                    buildHoverIcon(1, Icons.fastfood, 20, "Sokak Yemekleri"),
                    buildHoverIcon(2, Icons.cake, 20, "Tatlı"),
                    buildHoverIcon(3, Icons.local_cafe, 20, "Cafe"),
                    buildHoverIcon(4, Icons.local_bar, 18, "Bar"),
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
                              // Resmin üzerine tıklama işlemi
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
        height: 71,
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
            padding: EdgeInsets.all(8.0),
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
