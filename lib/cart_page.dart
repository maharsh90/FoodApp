import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  List<int> idx;
  List<String> name;

  CartPage({super.key, required this.idx, required this.name});

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
              itemCount: widget.name.length,
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  child: ListTile(
                    leading: Image.asset("./images/${widget.name[index]}.png"),
                    title: Text('${widget.name[index]}'),
                    subtitle: const Text('\$121'),
                    trailing: IconButton(
                        onPressed: () {},
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
