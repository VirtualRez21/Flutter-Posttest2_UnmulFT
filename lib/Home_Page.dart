import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget gambar(String path, String judul) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(17.0),
            child: Image(
              image: AssetImage('assets/' + path),
              height: 350,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            judul,
            style: TextStyle(fontSize: 12, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          leading: GestureDetector(
            child: Icon(
              Icons.menu,
            ),
          ),
          title: Text("Posttest 2 Muchlis Mardais",
              style: TextStyle(fontSize: 16.0)),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.orangeAccent, Colors.blue])),
          ),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 400,
                    margin: EdgeInsets.all(5.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        gambar('a.jpg', 'Demon Slayer'),
                        gambar('b.jpg', 'Jujutsu Kaisen'),
                        gambar('c.jpg', 'Home Sweet Loan'),
                        gambar('d.jpg', 'Pagi di Amerika'),
                        gambar('e.jpg', 'Al-Qur\'an Cordoba'),
                        gambar('f.jpg', 'Pilar-Pilar Peradaban')
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Search for Books',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'You haven\'t searched for any items yet...',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Try now - we will help you!',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Material(
          child: InkWell(
            child: Container(
              child: const Center(
                child: Text(
                  "Start Reading Book Now",
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ),
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.blue),
              height: 50,
            ),
          ),
          color: Colors.transparent,
        ));
  }
}
