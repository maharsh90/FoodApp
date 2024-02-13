import 'package:flutter/material.dart';

class SliderPageApp extends StatefulWidget {
  const SliderPageApp({super.key});
  @override
  State<SliderPageApp> createState() => _SliderPageAppState();
}

class _SliderPageAppState extends State<SliderPageApp> {
  double currentSlider1Value = 10;
  double currentSlider2Value = 10;
  double currentSlider3Value = 10;
  Color redClr = Colors.white70;
  Color greenClr = Colors.white70;
  Color blueClr = Colors.white70;
  Color back = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      appBar: AppBar(
        title: const Text('hi'),
      ),
      body: Column(
        children: [
          Slider(
            activeColor: Colors.red,
            max: 255,
            min: 0,
            value: currentSlider1Value,
            onChanged: (value) {
              setState(() {
                currentSlider1Value = value;
                back = Color.fromRGBO(currentSlider1Value.toInt(), 0, 0, 0.5);
                redClr = back;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Slider(
              activeColor: Colors.blue,
              value: currentSlider2Value,
              min: 0,
              max: 255,
              onChanged: (value) {
                setState(() {
                  currentSlider2Value = value;
                  back = Color.fromRGBO(0, 0, currentSlider2Value.toInt(), 0.5);
                });
              }),
          const SizedBox(
            height: 10,
          ),
          Slider(
              activeColor: Colors.green,
              value: currentSlider3Value,
              min: 0,
              max: 255,
              onChanged: (value) {
                setState(() {
                  currentSlider3Value = value;
                  back = Color.fromRGBO(0, currentSlider3Value.toInt(), 0, 0.5);
                });
              }),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  back = Colors.red;
                });
              },
              child: const Text("Red")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  back = Colors.lightBlue;
                });
              },
              child: const Text('blue')),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  back = Colors.green;
                });
              },
              child: const Text('green')),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  back = Colors.white;
                });
              },
              child: const Text('white')),
        ],
      ),
    );
  }
}
