import 'package:flutter/material.dart';

class DetailPageApp extends StatefulWidget {
  const DetailPageApp({super.key});

  @override
  State<DetailPageApp> createState() => _DetailPageAppState();
}

class _DetailPageAppState extends State<DetailPageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detail page'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "./images/pizza.png",
              height: 300,
              width: 300,
            ),
            const Text(
              'Pizza name',
              style: TextStyle(
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const Text(
              'chesse burst',
              style: TextStyle(fontFamily: 'serif', fontSize: 15),
            ),
            const Text(
              'Price',
              style: TextStyle(
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const Text('\$109.0'),
            const Text(
              'Description',
              style: TextStyle(
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const Text(
              'sdfsdf sdfsdf swdfsdff sdfsfs sdf s sdfsf sdfsfsdfssdf',
              style: TextStyle(fontFamily: 'serif', fontSize: 15),
            ),
          ],
        ),
      )),
    );
  }
}
