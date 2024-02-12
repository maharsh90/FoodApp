import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_express_app/login.dart';
import 'package:food_express_app/slider_app.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}



class HomePage extends StatelessWidget {
  int selectedIdx = 0;
  List<Color> clr=[Colors.red,Colors.green,Colors.blue];
  List<String> txt=["coffee","pizza","burger","tea"];
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.teal,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                otherAccountsPicturesSize: Size.fromHeight(100.3),
                accountName: Text('john'),
                accountEmail: Text("john@gmail.com"),
                currentAccountPicture: Image.network(
                    "https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/default-profile-picture-male-icon.png"),
              ),
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: (){},
              ),
              ListTile(
                title: Text(
                  "About us",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: (){},
              ),
              ListTile(
                title: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: (){},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          // leading: Icon(Icons.add),
          title: Center(child: Text("HomePage")),
          backgroundColor: Colors.white,
          actions: [
            // IconButton(onPressed: (){}, icon: Icon(Icons.person_rounded,size: 22,color: Colors.black,)),
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage("https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/default-profile-picture-male-icon.png"),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginApp(),));
                },
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: txt.length,itemBuilder: (context,int index){
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                children: [
                                  Card(
                                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    color: Colors.white70,
                                      clipBehavior: Clip.hardEdge,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset("./images/${txt[index]}.png",height: 150,width: 150,),
                                          SizedBox(height: 10,),
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
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'serif',
                      fontSize: 25,
                    ),),
                    TextButton(onPressed: (){}, child: Text('See all',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman',
                      color: Colors.red,
                      fontSize: 25,
                    ),)),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SliderApp(),));
                },
                child: SizedBox(
                  height: 300,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          color: Colors.white70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("./images/pizza.png",width: 300,height: 200,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Pizza',style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Helvetica',
                                  ),),
                                  SizedBox(width: 300,),
                                  Image.asset("./images/location.png",height: 20,width: 20,),
                                  // Icon(Icons.maps_home_work_rounded,color: Colors.red,),
                                  Text('3.0 KM'),
                                ],
                              ),
                              Text("Fast Food",textAlign: TextAlign.start,style:TextStyle(
                                fontSize: 15,
                                fontFamily: 'serif',
                              ),),
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Colors.red,)),
                                  Text('4.7(143 Ratings)'),
                                  SizedBox(width: 200,),
                                  ElevatedButton(onPressed: (){}, child: Text("\$121")),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },),
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'serif',
                      fontSize: 25,
                    ),),
                    TextButton(onPressed: (){}, child: Text('See all',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman',
                      color: Colors.red,
                      fontSize: 25,
                    ),)),
                  ],
                ),
              ),

              SizedBox(
                height: 300,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Card(
                        clipBehavior: Clip.hardEdge,
                        color: Colors.white70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("./images/pizza.png",width: 300,height: 200,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Pizza',style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Helvetica',
                                ),),
                                SizedBox(width: 300,),
                                Image.asset("./images/location.png",height: 20,width: 20,),
                                // Icon(Icons.maps_home_work_rounded,color: Colors.red,),
                                Text('3.0 KM'),
                              ],
                            ),
                            Text("Fast Food",textAlign: TextAlign.start,style:TextStyle(
                              fontSize: 15,
                              fontFamily: 'serif',
                            ),),
                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Colors.red,)),
                                Text('4.7(143 Ratings)'),
                                SizedBox(width: 200,),
                                ElevatedButton(onPressed: (){}, child: Text("\$121")),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

