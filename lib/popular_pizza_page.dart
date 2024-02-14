import 'package:flutter/material.dart';

class PopularPizzaPage extends StatefulWidget {
  final List<String> pizzaList;
  const PopularPizzaPage({super.key, required this.pizzaList});

  @override
  State<PopularPizzaPage> createState() => _PopularPizzaPageState();
}

class _PopularPizzaPageState extends State<PopularPizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Popular Pizza'),
      ),
      body: ListView.builder(
        itemCount: widget.pizzaList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            clipBehavior: Clip.hardEdge,
            child: Column(
              children: [
                Image.asset(
                  "./images/${widget.pizzaList[index]}.png",
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'margerita',
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
