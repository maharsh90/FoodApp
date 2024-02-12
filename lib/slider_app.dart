import 'package:flutter/material.dart';

class SliderApp extends StatefulWidget{
  const SliderApp({super.key});
  State<SliderApp> createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderApp> {
  double currentSlider1Value=10;
  double currentSlider2Value=10;
  double currentSlider3Value=10;
  Color redClr=Colors.white70;
  Color greenClr=Colors.white70;
  Color blueClr=Colors.white70;
  Color back=Colors.white;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      appBar: AppBar(
        title: Text('hi'),
      ),
      body: Column(
        children: [
          Slider(
            activeColor: Colors.red,
            max: 255,
            min: 0,
            value: currentSlider1Value,
            onChanged: (value){
              setState(() {
                currentSlider1Value=value;
                back=Color.fromRGBO(currentSlider1Value.toInt(), 0, 0, 0.5);
                redClr=back;
              });
            },
          ),
          SizedBox(height: 10,),
          Slider(activeColor: Colors.blue,value: currentSlider2Value,min: 0,max: 255, onChanged: (value){
            setState(() {
              currentSlider2Value=value;
              back=Color.fromRGBO(0, 0, currentSlider2Value.toInt(), 0.5);
            });
          }),
          SizedBox(height: 10,),
          Slider(activeColor: Colors.green,value: currentSlider3Value,min: 0,max: 255, onChanged: (value){
            setState(() {
              currentSlider3Value=value;
              back=Color.fromRGBO(0, currentSlider3Value.toInt(), 0, 0.5);
            });
          }),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            setState(() {
              back=Colors.red;
            });
          }, child: Text("Red")),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            setState(() {
              back=Colors.lightBlue;
            });
          }, child: Text('blue')),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            setState(() {
              back=Colors.green;
            });
          }, child: Text('green')),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            setState(() {
              back=Colors.white;
            });
          }, child: Text('white')),
        ],
      ),
    );
  }
}
