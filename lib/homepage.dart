import 'package:flutter/material.dart';
import 'package:pizzaapp/signup.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color myColor = Color(0xFFeb5160); // Replace RR, GG, BB with your hex values

  @override
  Widget build(BuildContext context) {
    return  Material(
      type: MaterialType.transparency,
      child: Container(
          color: myColor,
          child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 4.0,
                              )
                          ),
                          child: Image.asset(
                            'assets/mWhite.png',
                            // s
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(child: Text('ARE YOU\n HUNGRY..?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.center,),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 60,
                      // padding: EdgeInsets.zero,

                      child: Row(
                        children: [
                          Icon(Icons.circle, size: 60, color: Theme.of(context).primaryColor,),
                          Expanded(
                              child: Center(child: Text("GET STARTED", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),))
                          )
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54, // Shadow color
                            spreadRadius: 1, // Spread radius
                            blurRadius: 2, // Blur radius
                            offset: Offset(0, 2), // Offset of the shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),


                ],
              )
          )



      ),
    );
     

  }
}

