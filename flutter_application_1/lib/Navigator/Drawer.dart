import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Demo'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // Menghindari padding default
          children: [
            Container(
              color: Colors.blue[100],
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                accountName: const Text(
                  'Khanif Zyen',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  'khanif.zyen@gmail.com',
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: const CircleAvatar(
                  child: FlutterLogo(size: 50),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Item 2'),
              onTap: () {
                // Navigasi atau aksi lainnya
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Selamat datang di halaman utama!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
