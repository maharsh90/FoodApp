import 'package:flutter/material.dart';
import 'package:food_express_app/login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Image.asset(
                  './images/coffee.png',
                  height: 500,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    clipBehavior: Clip.hardEdge,
                    style: ElevatedButton.styleFrom(
                      shadowColor: Color.fromARGB(200, 30, 100, 200),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPageApp(),
                          ));
                    },
                    child: const Text('Get Started')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
