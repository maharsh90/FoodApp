import 'package:flutter/material.dart';
import 'package:food_express_app/login_page.dart';

class SignupPageApp extends StatefulWidget {
  const SignupPageApp({super.key});
  @override
  State<SignupPageApp> createState() => _SignupPageAppState();
}

class _SignupPageAppState extends State<SignupPageApp> {
  TextEditingController uname = TextEditingController();
  TextEditingController passwd = TextEditingController();
  TextEditingController email = TextEditingController();

  final _unameKey = GlobalKey<FormState>();
  final _emailKey = GlobalKey<FormState>();
  final _passKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('SignUp'),
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.5),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[Colors.teal, Colors.lightBlue]),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "SignUp",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "serif",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 310,
                  width: 300,
                  child: Stack(
                    children: [
                      Card(
                        clipBehavior: Clip.hardEdge,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Form(
                              key: _unameKey,
                              child: Align(
                                alignment: Alignment.center,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: uname,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.5)),
                                    hintText: 'Enter username',
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'please provide username';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Form(
                              key: _emailKey,
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: email,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.5)),
                                  hintText: 'Enter email',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please provide email";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Form(
                              key: _passKey,
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: passwd,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.5)),
                                  hintText: 'Enter password',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "please provide password";
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (_unameKey.currentState!.validate() &&
                                    _emailKey.currentState!.validate() &&
                                    _passKey.currentState!.validate()) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginPageApp(),
                                      ));
                                }
                              },
                              child: Text(
                                'Signup',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.blueAccent),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
