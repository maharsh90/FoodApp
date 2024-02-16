import 'package:flutter/material.dart';
import 'package:food_express_app/pizza_class.dart';

class CartPage extends StatefulWidget {
  List<Pizza> pizzaList;

  CartPage({super.key, required this.pizzaList});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: widget.pizzaList.length,
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  child: ListTile(
                    leading: Image.asset(
                        "./images/${widget.pizzaList[index].name}.png"),
                    title: Text('${widget.pizzaList[index].name}'),
                    subtitle: Text('\$${widget.pizzaList[index].price}'),
                    trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            widget.pizzaList.removeAt(index);
                          });
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.blueAccent)),
              onPressed: () {},
              child: const Text(
                'Checkout',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
