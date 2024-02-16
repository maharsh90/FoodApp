import 'package:flutter/material.dart';
import 'package:food_express_app/home_page.dart';
import 'package:food_express_app/signup_page.dart';

class LoginPageApp extends StatefulWidget {
  const LoginPageApp({super.key});
  @override
  State<LoginPageApp> createState() => _LoginPageAppState();
}

class _LoginPageAppState extends State<LoginPageApp> {
  final _UnameFormKey = GlobalKey<FormState>();
  final _PasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.5),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[Colors.teal, Colors.lightBlue]),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // height: MediaQuery.of(context).size.height / 2,
                  height: 400,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'serif',
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Stack(
                          children: [
                            SizedBox(
                              child: Center(
                                child: Card(
                                  clipBehavior: Clip.hardEdge,
                                  color: Colors.white,
                                  margin: const EdgeInsets.all(5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Form(
                                        key: _UnameFormKey,
                                        child: TextFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            border: UnderlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0.5)),
                                            hintText: 'Enter Username',
                                          ),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'please enter username';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Form(
                                        key: _PasswordFormKey,
                                        child: TextFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            border: UnderlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0.5)),
                                            hintText: 'Enter password',
                                          ),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'please enter password';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          if (_UnameFormKey.currentState!
                                                  .validate() &&
                                              _PasswordFormKey.currentState!
                                                  .validate()) {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomePage(),
                                                ));
                                          }
                                        },
                                        style: const ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll<Color>(
                                                  Colors.blueAccent),
                                        ),
                                        child: const Text(
                                          'Submit',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SignupPageApp(),
                                                ));
                                          },
                                          child:
                                              const Text('Create new account')),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
