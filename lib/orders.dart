import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'dashboard.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  Color myColor = Color(0xffdc6570);
  List<CatItem> CatItemList = [
    CatItem('Chicken Cheesy Burger', 'assets/burgerK2.png', 'When the food is tasty, try to order it fast','\$8.00'),
    CatItem('Pork Cheesy Burger', 'assets/burgerK.png', 'When the food is tasty, try to order it fast','\$15.00'),
    CatItem('Beef Cheesy Burger', 'assets/burgerK.png', 'When the food is tasty, try to order it fast','\$15.00')
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Column(
        children: [
          ListTile(
            leading: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Dashboard()));
              },
              child: Icon(
                Icons.arrow_back_ios_sharp,
                color: Theme.of(context).primaryColor,
              ),
            ),
            title: Text(
                'My Cart'
            ),
            trailing: Icon(
              Icons.favorite_border,
              color: Theme.of(context).primaryColor,
            ),

          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: CatItemList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int i){
                      CatItem CatItemObj = CatItemList[i];
                      return Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                          height: 160,
                          // width: 300,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 1
                              )]
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                    height: 100,
                                    margin: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                      color: myColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(CatItemObj.image)
                                ),


                              ),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 30, right: 20),
                                          child: Text(
                                            CatItemObj.name,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 30),
                                          child: Container(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text(
                                              CatItemObj.tag,
                                              softWrap: true,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w200
                                              ),



                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Orders()));
                                          },
                                          child: Container(
                                            width: 130,
                                            height: 30,

                                            // padding: EdgeInsets.zero,

                                            child: Row(
                                              children: [

                                                Expanded(
                                                    child: Center(
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                              child: Icon(
                                                                CupertinoIcons.minus,
                                                                size: 20,
                                                              ),
                                                            ),
                                                            Expanded(child: Padding(
                                                                padding: EdgeInsets.only(left: 15),
                                                                child: Text('1'))),
                                                            Expanded(
                                                              child: Icon(
                                                                Icons.add,
                                                                size: 20,
                                                              ),
                                                            ),
                                                          ],
                                                        ))
                                                )
                                              ],
                                            ),

                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(20),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black54, // Shadow color
                                                  spreadRadius: 0, // Spread radius
                                                  blurRadius: 1, // Blur radius
                                                  offset: Offset(0, 1), // Offset of the shadow
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),


                                  )
                              )
                            ],
                          )


                      );
                    },

                  ),
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                        children: [
                          Expanded(
                              flex: 6,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Enter Promo Code",
                                    fillColor: Colors.grey[00],
                                    filled: true

                                ),
                              )
                          ),
                          Expanded(
                              flex: 3,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                                  foregroundColor: MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0), // Adjust the radius as needed
                                    ),
                                  ),

                                ),
                                onPressed: () {  },
                                child: const Text("Apply"),)
                          )

                        ]
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                children: [

                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Gross amount'
                          ),
                        ),
                        Expanded(
                          child: Text(
                              '\$8',
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                              'Discount'
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '\$1',
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                              'Tax'
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '\$2',
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
                          child: Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                              'Total',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '\$5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
                  Container(

                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    height: 40,

                    // padding: EdgeInsets.zero,

                    child: Row(
                      children: [

                        Expanded(
                            child: Center(
                                child: Text(
                                  "PROCEED", style: TextStyle(color: Colors.white,
                                    fontSize: 15, fontWeight: FontWeight.w600),selectionColor: Colors.white ,))
                        )
                      ],
                    ),

                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
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
                  SizedBox(
                    height: 30
                  )
              ]),
            ),
          )
        ]

      )),
    );
  }
}

class CatItem{
  String name;
  var image;
  String tag;
  var price;

  CatItem(this.name, this.image, this.tag, this.price);
}