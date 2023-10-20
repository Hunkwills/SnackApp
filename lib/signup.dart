import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzaapp/dashboard.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Color myColor = Color(0xFFeb5160);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(40),
              child: Center(
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: myColor,
                          width: 4.0,
                        )
                    ),
                    child: Container(
                      margin: EdgeInsets.all(4.0),
                      // color: myColor,
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, color: myColor,
                      ),
                      child: Image.asset(
                        'assets/mWhite.png',
                        // s
                      ),
                    )
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(child: Text('| SIGN UP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),)),
                Expanded(child: TextButton(onPressed:(){},
                  child: Text('|Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),),
                ))
              ],
            ),
            SizedBox(height: 40,),
            Container(
              height: 70,
              padding: EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(
                    color: myColor),
                decoration: InputDecoration(

                    hintText: "|Name",
                    hintStyle: TextStyle(color: myColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
            ),

            Container(
              height: 70,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Set the border radius for rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.white60,
                    spreadRadius: 1, // Spread radius
                    blurRadius: 2, // Blur radius
                    offset: Offset(0, 2),
                    // Shadow color
                     // Set the blur radius of the shadow
                  ),
                ],

              ),
              child: TextField(
                style: TextStyle(
                    color: myColor),
                obscureText: true,
                decoration: InputDecoration(

                    hintText: "|Password",
                    hintStyle: TextStyle(color: myColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
            ),

            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ),
                  );
                },
              child: Container(

                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 60,

                // padding: EdgeInsets.zero,

                child: Row(
                  children: [

                    Expanded(
                        child: Center(child: Text("SIGN UP", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),))
                    )
                  ],
                ),

                decoration: BoxDecoration(
                  color: myColor,
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/GoogleIcon.png',
                    height: 30,
                    width: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                  child: Image.asset(
                    'assets/faceBookIcon.png',
                    height: 30,
                    width: 30,
                  )
                )
              ],
            )

            
      ]),
        ),
    )
        ,),);
  }
}
