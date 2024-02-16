import 'package:flutter/material.dart';
import 'package:food_express_app/cart_page.dart';
import 'package:food_express_app/categories_page.dart';
import 'package:food_express_app/pizza_class.dart';
import 'package:food_express_app/popular_pizza_page.dart';
import 'package:food_express_app/slider_app_page.dart';
import 'package:food_express_app/splash_screen.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Pizza> list = [];
Pizza obj = Pizza("Mexican", 12, 4.1, "./images/Mexican.png");
Pizza obj1 = Pizza("Farmhouse", 16, 4.2, "./images/Farmhouse.png");
Pizza obj2 = Pizza("Margherita", 19, 4.3, "./images/Margherita.png");
Pizza obj3 = Pizza("cheesy7", 10, 4.4, "./images/cheesy7.png");
Pizza obj4 = Pizza("Paneer", 67, 4.5, "./images/Paneer.png");

List<Pizza> cartls = [];

class _HomePageState extends State<HomePage> {
  int selectedIdx = 0;

  List<Color> clr = [Colors.red, Colors.green, Colors.blue];

  List<String> txt = ["coffee", "pizza", "burger", "tea"];

  List<String> pizzaName = [
    "Mexican",
    "Farmhouse",
    "Margherita",
    "cheesy7",
    "Paneer"
  ];

  List<String> BurgerName = [
    "AlooTikki",
    "Paneer",
    "Italian",
    "CornCheesy",
    "McCheese"
  ];

  List<String> TeaName = ["Green", "Black", "Orange", "Blue", "Masala"];

  List<int> listIndex = [];
  List<String> listNames = [];

  @override
  Widget build(BuildContext context) {
    list = [];
    list.add(obj);
    list.add(obj1);
    list.add(obj2);
    list.add(obj3);
    list.add(obj4);
    print(list);
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.teal,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              otherAccountsPicturesSize: const Size.fromHeight(100.3),
              accountName: const Text('john'),
              accountEmail: const Text("john@gmail.com"),
              currentAccountPicture: Image.network(
                  "https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/default-profile-picture-male-icon.png"),
            ),
            ListTile(
              title: const Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
            ),
            ListTile(
              title: const Text(
                "About us",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                "Contact",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                "Cart",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(
                        pizzaList: cartls,
                      ),
                    ));
              },
            ),
            ListTile(
              title: const Text(
                "LogOut",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // leading: Icon(Icons.add),
        title: const Text("HomePage"),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: const [
          // IconButton(onPressed: (){}, icon: Icon(Icons.person_rounded,size: 22,color: Colors.black,)),
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
                "https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/default-profile-picture-male-icon.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginApp(),));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SliderPageApp(),
                    ));
              },
              child: SizedBox(
                height: 240,
                child: ListView.builder(
                    // shrinkWrap: true,
                    // physics: BouncingScrollPhysics(
                    //     decelerationRate: ScrollDecelerationRate.fast),
                    scrollDirection: Axis.horizontal,
                    itemCount: txt.length,
                    itemBuilder: (context, int index) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              children: [
                                Card(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  color: Colors.white70,
                                  clipBehavior: Clip.hardEdge,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        "./images/${txt[index]}.png",
                                        height: 150,
                                        width: 150,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text("${txt[index]}"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'serif',
                      fontSize: 25,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CategoryPageApp(dataList: txt),
                            ));
                      },
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman',
                          color: Colors.red,
                          fontSize: 25,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPageApp(indx: index, pizzaList: list),
                            ));
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          color: Colors.white70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "${list[index].image}",
                                width: 200,
                                height: 200,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.red,
                                  ),
                                  Text(list[index].rating.toString()),
                                  const SizedBox(
                                    width: 150,
                                  ),
                                  Image.asset(
                                    "./images/location.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                  // Icon(Icons.maps_home_work_rounded,color: Colors.red,),
                                  const Text('3.0 KM'),
                                ],
                              ),
                              Text(
                                list[index].name.toString(),
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'serif',
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$${list[index].price}",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'vernada',
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 200,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        // listIndex.add(index);
                                        // listNames.add(pizzaName[index]);
                                        // print(index);
                                        // print(pizzaName[index]);
                                        cartls.add(list[index]);
                                      },
                                      icon: Image.asset(
                                        "./images/cart.png",
                                        height: 20,
                                        width: 20,
                                        color: Colors.red,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'serif',
                      fontSize: 25,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PopularPizzaPage(pizzaList: pizzaName),
                            ));
                      },
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman',
                          color: Colors.red,
                          fontSize: 25,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        width: 290,
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          color: Colors.white70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "./images/pizza.png",
                                width: 200,
                                height: 200,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Pizza',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Helvetica',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Image.asset(
                                    "./images/location.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                  // Icon(Icons.maps_home_work_rounded,color: Colors.red,),
                                  const Text('3.0 KM'),
                                ],
                              ),
                              const Text(
                                "Fast Food",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'serif',
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.star,
                                        color: Colors.red,
                                      )),
                                  const Text('4.7(143 Ratings)'),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: const Text("\$121")),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
