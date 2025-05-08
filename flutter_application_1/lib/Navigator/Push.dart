import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator Push Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PageOne(),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PageTwo(),
                  ),
                );
              },
              child: const Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Page Two',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
