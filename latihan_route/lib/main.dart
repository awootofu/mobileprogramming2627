import 'package:flutter/material.dart';

import 'layarkeduapisah.dart';

//screen kedua
class LayarKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Ini Screen 2'),
      ),
      body: Center(child: Text("screen kedua, tap icon back di app bar")),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Route',
      routes: {
        '/': (context) => MyHome(),
        '/layar2': (context) => LayarKedua(),
      },
    );
  }
}

//perlu class MyHome ini karena Navigator perlu akses ke parent Material App
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/layar2');
              },
              child: const Text('Ke Screen Kedua'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return LayarKeduaPisah(
                      pesan: "halloo ini pesan dari screen 1");
                }));
              },
              child: const Text('Ke Screen Kedua Pisah'),
            ),
          ],
        ),
      ),
    );
  }
}
