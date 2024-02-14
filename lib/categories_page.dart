import 'package:flutter/material.dart';

class CategoryPageApp extends StatefulWidget {
  final List<String> dataList;
  const CategoryPageApp({required this.dataList, Key? key}) : super(key: key);

  @override
  State<CategoryPageApp> createState() => _CategoryPageAppState();
}

class _CategoryPageAppState extends State<CategoryPageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('All Categories'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: widget.dataList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: [
                  Image.asset(
                    "./images/${widget.dataList[index]}.png",
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
      ),
    );
  }
}
