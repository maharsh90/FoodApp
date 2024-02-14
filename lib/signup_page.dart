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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text('SignUp'),
        ),
        body: SizedBox(
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
                margin: const EdgeInsets.all(10),
                height: 230,
                width: 300,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.hardEdge,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                print('please Enter some text');
                              }
                            },
                            controller: uname,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.5)),
                              hintText: 'Enter username',
                            ),
                          ),
                          TextFormField(
                            controller: email,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.5)),
                              hintText: 'Enter email',
                            ),
                          ),
                          TextFormField(
                            controller: passwd,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.5)),
                              hintText: 'Enter password',
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPageApp(),
                                  ));
                            },
                            child: Text(
                              'Signup',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
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
        ));
  }
}
