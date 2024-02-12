
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget{
 const LoginApp({super.key});
 State<LoginApp> createState()=>_LoginAppState();
}

class _LoginAppState extends State<LoginApp>{
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.5),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: <Color>[
                      Colors.lightBlue,
                      Colors.blue,
                    ]
                ),
              ),
              child: Stack(
                children: [
                      SizedBox(
                        height: 200,
                        child: Center(
                          child: Card(
                            clipBehavior: Clip.hardEdge,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(0.5)),
                                    hintText: 'Enter Username',
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(0.5)),
                                    hintText: 'Enter password',
                                  ),
                                ),
                                SizedBox(height: 10,),
                                ElevatedButton(onPressed: (){}, child: Text('Submit')),
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
    );
  }
}