import 'package:flutter/material.dart';
import 'package:food_express_app/pizza_class.dart';

class DetailPageApp extends StatefulWidget {
  List<Pizza> pizzaList;
  int indx;
  DetailPageApp({super.key, required this.indx, required this.pizzaList});

  @override
  State<DetailPageApp> createState() => _DetailPageAppState();
}

class _DetailPageAppState extends State<DetailPageApp> {
  @override
  Widget build(BuildContext context) {
    print(widget.indx);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detail page'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "${widget.pizzaList[widget.indx].image}",
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
            Text(
              widget.pizzaList[widget.indx].name.toString(),
              style: const TextStyle(fontFamily: 'serif', fontSize: 15),
            ),
            const Text(
              'Price',
              style: TextStyle(
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text("\$${widget.pizzaList[widget.indx].price}"),
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
