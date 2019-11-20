import 'package:flutter/material.dart';

/// AHI - Tugas Fullter Basic OSG8 - 2
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eudeka ! Flutter Basic OSG8',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Eudeka ! Flutter Basic OSG8'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(

      padding: const EdgeInsets.only(top:20.0,left:12.0,right: 12.0,bottom: 5.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(

              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Kemdikbud Minta Orang Tua Ikut Upacara 17 Agustus',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );


  Column buildButtonColumn(IconData icon, String label) {
    Color color = Theme.of(context).primaryColor;

    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Icon(icon, color: color),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );

}

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text(
            '1000 vote',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

Widget rattingstart = new Container(
  child: ratings
);
    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

// DefaultTextStyle.merge() allows you to create a default text
// style that is inherited by its child and all subsequent children.
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                ImageIcon(AssetImage('assets/img/loveblack.png')),
                Text('550'),
              ],
            ),
            Column(
              children: [
                ImageIcon(AssetImage('assets/img/lovewhite.png')),
                Text('400'),
              ],
            ),
            Column(
              children: [
                ImageIcon(AssetImage('assets/img/disket.png')),
                Text('300'),
              ],
            ),
            Column(
              children: [
                ImageIcon(AssetImage('assets/img/trash.png')),
                Text('100'),
              ],
            ),Column(
              children: [
                ImageIcon(AssetImage('assets/img/add.png')),
                Text('150'),
              ],
            ),
          ],
        ),
      ),
    );

    Widget buttonSection = new Container(
  child:iconList
);

    Widget textSection = new Container(
      color: Colors.green,
      padding: const EdgeInsets.all(12.0),
      child: new Text(
        '''
      Sekjen Kemendikbud Didik Suhardi mengatakan edaran tersebut diterbitkan sebagai upaya agar masyarakat dapat ikut berperan dalam menanamkan jiwa pejuangan kepada para siswa.

"Salah satu upaya kita untuk penanaman nilai perjuangan dan kebangsaan kepada anak didik sehingga orang tua mereka juga ikut membimbing putra-putrinya," ujar Didik saat dihubungi CNNIndonesia.com, Jumat (16/8).


Surat edaran yang dikeluarkan oleh Sekretaris Jendral Kemendikbud itu berjudul Pelibatan Orang Tua dan Masyarakat pada Penyelenggaraan Upacara Bendera Peringatan Hari Ulang Tahun ke-74 Kemerdekaan Republik Indonesia Tahun 2019 di lingkungan satuan pendidikan. Surat edaran terbit pada 15 Agustus lalu.

Lihat juga:Anies Lantik Paskibra yang Bertugas di Pulau Reklamasi

Surat edaran ditujukan kepada seluruh dinas pendidikan provinsi dan kabupaten/kota se-Indonesia. Dalam edaran tersebut, Kemendikbud juga mengimbau orang tua murid agar turut bergotong-royong dalam mempersiapkan serta melaksanakan berbagai acara dan kegiatan untuk memperingati Hari Kemerdekaan.

Menurut Didik hal ini perlu dilakukan karena pendidikan di sekolah juga membutuhkan peran keluarga serta masyarakat.

"Ini momen yang bagus dalam membangun kebersamaan sebagai tri pusat pendidikan yaitu sekolah, masyarakat dan keluarga," jelasnya.

Salah satu orang tua murid SDN Srengseng 04, Jakarta Barat mengaku mendapat surat undangan dari sekolah. Dia diundang untuk menghadiri upacara bendera peringatan Hari Kemerdekaan di sekolah anaknya pada Sabtu (17/8).

Lihat juga:Pulau Reklamasi Bersolek untuk Upacara HUT RI Pemprov DKI

Wakil Kepala Dinas Pendidikan DKI Jakarta Syaifullah tidak membantah. Undangan itu merupakan tindak lanjut dari edaran yang diterbitkan pihak Kemendikbud.

"Meneruskan instruksi kemendikbud ya," ujar Syaefullah saat dihubungi.

Indonesia akan memperingati Hari Kemerdekaan ke-74 pada Sabtu mendatang (17/8). Seperti yang dilakukan setiap tahun, seluruh siswa melaksanakan upacara bendera di sekolahnya masing-masing.

Begitu pula dengan aparatur sipil negara (ASN) atau pegawai negeri sipil (PNS) yang harus hadir dalam upacara peringatan Hari Kemerdekaan. Misalnya PNS lingkungan Pemprov DKI Jakarta, yang pada tahun ini bakal menghadiri upacara di pulau hasil reklamasi.
''',
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );

    return new MaterialApp(

      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Eudeka ! Flutter Basic OSG8'),
          leading: ImageIcon(AssetImage('assets/img/graduation.png')),
        ),
        body: new ListView(
          children: [
            new Image.asset(
              'assets/img/kemerdekaan.png',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection,
            rattingstart,
            buttonSection,
          ],
        ),
      ),
    );
  }
}