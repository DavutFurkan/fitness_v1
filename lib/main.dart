import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GirisSayfasi(),

    );
  }
}

class GirisSayfasi extends StatelessWidget {
  const GirisSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/images/image.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 550, left: 20, bottom: 20, right: 20),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Kol()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40)),
                child: const Text(
                  'Egzersizler',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Kol extends StatelessWidget {
  const Kol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kol Egzersizleri',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('lib/images/image.jpg', fit: BoxFit.cover),
          Padding(
            padding:
                const EdgeInsets.only(top: 649, left: 250, bottom: 0, right: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Gogus()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40),
                  ),
                  child: const Text(
                    'Sonraki Sayfa',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 649, left: 0, bottom: 0, right: 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GirisSayfasi()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40),
                  ),
                  child: const Text(
                    'Önceki Sayfa',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset('lib/images/kol.jpg'),
              ),
              Container(
                height: 410,
                width: 340,
                color: Colors.black,
                child: const Text(
                  "                      Kol Antrenmanı\n1. Biceps (Ön Kol) Egzersizleri\nDumbbell Curl: Ayakta veya otururken, dumbbell'ları avuç içleri yukarı bakacak şekilde kavrayın, dirseklerinizi sabit tutarak kollarınızı kaldırın ve indirin.\n2. Triceps (Arka Kol) Egzersizleri:Tricep Dips: Bir platforma veya bench'e sırtınızı dönerek, ellerinizle bench'e tutunun, bacaklarınızı bükmeden yere paralel olacak şekilde kollarınızı bükün ve uzatın.\n3. Forearm (Önkol) Egzersizleri:Wrist Curl: Dumbbell'ı elinizin üst kısmına kavrayarak bileğinizi aşağı ve yukarı doğru bükün.\n4.Her Hareket 4 Set 12 Tekrar !!!",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Gogus extends StatelessWidget {
  const Gogus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gögüs Egzersizleri',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('lib/images/image.jpg', fit: BoxFit.cover),
          Padding(
            padding:
                const EdgeInsets.only(top: 649, left: 250, bottom: 0, right: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Sirt()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40),
                  ),
                  child: const Text(
                    'Sonraki Sayfa',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 649, left: 0, bottom: 0, right: 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const Kol()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40),
                  ),
                  child: const Text(
                    'Önceki Sayfa',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset('lib/images/gogus.jpg'),
              ),
              Container(
                height: 430,
                width: 340,
                color: Colors.black,
                child: const Text(
                  "                    Gögüs Antrenmanı\n1.Bench Press (Bench Press): Barbell veya dumbbell kullanarak yatay pozisyonda yapılan bir egzersizdir. Göğüs, omuzlar ve triceps kaslarını çalıştırır.\n2.Chest Dips (Barfiks): Paralel çubuklar üzerinde vücut ağırlığı kullanılarak yapılan bir egzersizdir. Göğüs ve triceps kaslarını çalıştırır.\n3.Push-Ups (Şınav): Vücut ağırlığı kullanılarak yapılan bir egzersizdir. Göğüs kaslarını güçlendirir ve geniş bir hareket yelpazesi sunar.\n4.Cable Crossover: Kablo makinesi kullanılarak yapılan bir egzersizdir. Göğüs kaslarını çapraz hareketlerle çalıştırır.\n5. Her Hareket 4 Set 12 Tekrar !!! ",

                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Sirt extends StatelessWidget {
  const Sirt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sırt Egzersizleri',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('lib/images/image.jpg', fit: BoxFit.cover),
          Padding(
            padding:
                const EdgeInsets.only(top: 649, left: 250, bottom: 0, right: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Bacak()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40),
                  ),
                  child: const Text(
                    'Sonraki Sayfa',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 649, left: 0, bottom: 0, right: 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const Gogus()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40),
                  ),
                  child: const Text(
                    'Önceki Sayfa',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset('lib/images/sirt.jpg'),
              ),
              Container(
                height: 435,
                width: 340,
                color: Colors.black,
                child: const Text(
                  "                      Sırt Antrenmanı\n1. Deadlift: Tüm vücut kaslarını çalıştıran çok etkili bir egzersizdir. Sırt kaslarını, bel ve bacak kaslarını da hedefler.\n2. Pull-Ups (Çekiş): Vücut ağırlığı kullanılarak yapılan bir egzersizdir. Geniş, dar veya ters kavrama ile yapılabilir. Sırt kaslarını güçlendirir.\n3. Barbell Rows (Barbell Sırt Çekişi): Barbell kullanılarak yapılan bir egzersizdir. Sırt kaslarını ve arka deltoidleri hedefler.\n4. Seated Cable Rows (Kablo Sırt Çekişi): Kablo makinesi kullanılarak yapılan bir egzersizdir. Sırt kaslarını çeşitli açılardan çalıştırabilir.\n5. Her Hareket 4 Set 12 Tekrar !!! ",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.82,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Bacak extends StatelessWidget {
  const Bacak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bacak Egzersizleri',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('lib/images/image.jpg', fit: BoxFit.cover),
          Padding(
            padding:
                const EdgeInsets.only(top: 649, left: 250, bottom: 0, right: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Karin()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40),
                  ),
                  child: const Text(
                    'Sonraki Sayfa',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 649, left: 0, bottom: 0, right: 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const Sirt()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40),
                  ),
                  child: const Text(
                    'Önceki Sayfa',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset('lib/images/bacak.jpg'),
              ),
              Container(
                height: 405,
                width: 340,
                color: Colors.black,
                child: const Text(
                  "                    Bacak Antrenmanı\n1. Squat (Çökme): Tüm alt vücut kaslarını çalıştıran temel bir egzersizdir. Quadriceps, hamstrings ve gluteus kaslarını hedefler.\n2. Lunges (İleri Geri Adımlar): Tek bacakla yapılan bir egzersizdir. Quadriceps, hamstrings ve gluteus kaslarını çalıştırır.\n3. Leg Press (Bacak Presi): Makine yardımıyla yapılan bir egzersizdir. Quadriceps, hamstring ve gluteus kaslarını hedefler.\n4. Calf Raises (Baldır Kaldırma): Baldır kaslarını hedefleyen bir egzersizdir. Yüksek platform veya calf machine ile yapılabilir.\n5. Her Hareket 4 Set 12 Tekrar !!! ", //  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.3,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Karin extends StatelessWidget {
  const Karin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Karın Egzersizleri',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('lib/images/image.jpg', fit: BoxFit.cover),
          Padding(
            padding:
                const EdgeInsets.only(top: 649, left: 250, bottom: 0, right: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CikisSayfasi()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40),
                  ),
                  child: const Text(
                    'Sonraki Sayfa',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 649, left: 0, bottom: 0, right: 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const Bacak()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(130, 40),
                  ),
                  child: const Text(
                    'Önceki Sayfa',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset('lib/images/karin.jpg'),
              ),
              Container(
                height: 405,
                width: 340,
                color: Colors.black,
                child: const Text(
                  "                    Karın Antrenmanı\n1. Plank (Plank Duruşu): Düz bir pozisyonda kollar veya dirsekler üzerinde durarak vücudu düz tutma egzersizidir. Karın kaslarını ve core stabilitesini geliştirir.\n2. Crunches (Mekik): Sırtüstü yatarak, bacakların bükülü olduğu pozisyonda baş ve omuzları kaldırma hareketidir. Karın kaslarını hedefler.\n3. Mountain Climbers (Dağ Tırmanışı): Şınav pozisyonunda baş ve bacakları sırayla göğse doğru çekme hareketidir. Hem karın kaslarını hem de kardiyo çalışmayı hedefler.\n4. Her Hareket 4 Set 12 Tekrar !!!",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.82,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CikisSayfasi extends StatefulWidget {
  const CikisSayfasi({Key? key}) : super(key: key);

  @override
  State<CikisSayfasi> createState() => _CikisSayfasiState();
}

class _CikisSayfasiState extends State<CikisSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/images/image.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550, left: 20, bottom: 20, right: 20),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, minimumSize: const Size(130, 40)
                ),
                child: const Text(
                  'Çıkış',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


