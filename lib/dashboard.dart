import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzaapp/categories.dart';
import 'package:pizzaapp/orders.dart';
import 'package:pizzaapp/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedTab = 2;

  List _pages = [
    Center(
      child: ListTile(
        title: Icon(
            CupertinoIcons.search
        ),
        subtitle: Center(
          child: Text(
              'Search'
          ),
        ),
      ),
    ),
    Center(
      child: Categories(),
    ),
    Center(
      child: MyBodyWidget(),
    ),
    Center(
      child: Orders(),
    ),
    Center(
      child: ProfileWidget(),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        // body: MyBodyWidget(),
        body: _pages[_selectedTab],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedTab,
            onTap: (index) => _changeTab(index),
            // backgroundColor: Colors.black54,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: [

              BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",
                backgroundColor: Colors.black,),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: "Favorite"),
              BottomNavigationBarItem(icon: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Create a circular shape
                    color: Theme.of(context).primaryColor, // Background color of the circle
                  ),
                  child: Center(child: Icon(Icons.home))), label: "Home",
                backgroundColor: Colors.black,),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_sharp), label: "Profile"),
            ],
          ),

      ),
    );
  }
}

class MyBodyWidget extends StatefulWidget {

  const MyBodyWidget({super.key});

  @override
  State<MyBodyWidget> createState() => _MyBodyWidgetState();
}

class _MyBodyWidgetState extends State<MyBodyWidget> {


  List<PopularItemData> itemList = [];

  List<CategoryData> categoryList = [];



  void initState(){
    itemList.add(PopularItemData('assets/prosciutto.jpg', 'Prosciutto', '20% off'));
    itemList.add(PopularItemData('assets/spinaci.jpg', 'Spinaci','10% off'));
        itemList.add(PopularItemData('assets/salamino.jpg', 'Salamino','15% off'));

    categoryList.add(CategoryData('Pizza', 'assets/burgerK2.png'));
    categoryList.add(CategoryData('Burger', 'assets/burgerK2.png'));
    categoryList.add(CategoryData('Pizza', 'assets/burgerK2.png'));



  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 5, right: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.settings,
                        size: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Theme.of(context).primaryColor,
                        ),
                        title: Text(
                          'Uganda, Kampala',
                          style: TextStyle(
                            fontSize: 10
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                        radius: 30, // Adjust the radius to control the size of the circle
                        backgroundImage: AssetImage('assets/Bruno.png'),
                        ),
                      )],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(10, 15, 10, 5) ,
                height: 50,
                child: TextField(decoration: InputDecoration(
                  // enabledBorder: OutlineInputBorder(
                  //
                  //
                  //   borderRadius: BorderRadius.circular(10),
                  //   // borderSide: BorderSide(color: Colors.white),
                  //
                  // ),
                  hintText: 'search your chat',
                  prefixIcon: Icon(Icons.search),
                ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 1, 30, 1),
                      child: Divider(
                        color: Colors.white60,
                        thickness: 2.0,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 200,
                // width: 300,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'The Fastest\nFood Delivery',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'When the Food is tasty and nice,try to order it fast',
                                softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200
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
                                height: 40,

                                // padding: EdgeInsets.zero,

                                child: Row(
                                  children: [

                                    Expanded(
                                        child: Center(child: Text("ORDER NOW", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Theme.of(context).primaryColor),))
                                    )
                                  ],
                                ),

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
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
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                          height: 200,
                          child: Align(
                              child: Image.asset('assets/burgerK.png'),
                              alignment: Alignment.centerRight
                          ),


                      )
                    )
                  ],
                )


      ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                trailing: TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => Categories()));
                  },
                  child: Text(
                    'View all',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Categories()));
                },
                child: Container(
                  height: 150,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList.length,
                      itemBuilder: (BuildContext context, int i){
                        CategoryData CatObj = categoryList[i];
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                  height: 100,
                                  margin: EdgeInsets.only(right: 5, left: 5),
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                      // width: 2.0,
                                    ),
                                  ),
                                  child: Image.asset(CatObj.image)
                              ),
                              Text(CatObj.name)
                            ],
                          ),
                        );
                      }),

                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 180.0),
                child: Text(
                  'Popular today',
                  style: TextStyle(
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Orders()));
                },
                child: Container(
                  child: ListView.builder(
                    itemCount: itemList.length,
                    shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int i){
                      var PopObj = itemList[i];
                      return Container(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                        child: Stack(
                          children: [
                            Container(
                              // width: 300,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20), // Rounded corners
                                image: DecorationImage(
                                  image: AssetImage(PopObj.Image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                width: MediaQuery.of(context).size.width-210, // Set the width of the transparent overlay container
                                height: 30, // Set the height of the transparent overlay container
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor, // Transparent background
                                  borderRadius: BorderRadiusDirectional.only(
                                    topEnd: Radius.circular(20),
                                  ), // Rounded corners
                                ),
                                child: Center(
                                  child: Text(
                                    PopObj.Discounted,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // Transparent Overlay Container
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: MediaQuery.of(context).size.width-20, // Set the width of the transparent overlay container
                                height: 40, // Set the height of the transparent overlay container
                                decoration: BoxDecoration(
                                  color: Colors.black54, // Transparent background
                                  borderRadius: BorderRadiusDirectional.only(
                                    bottomEnd: Radius.circular(20),
                                    bottomStart: Radius.circular(20),
                                  ), // Rounded corners
                                ),
                                child: Center(
                                  child: Text(
                                    PopObj.Name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                ),
              )





      ],
          ),
        ),
      )
    ;
  }
}

class PopularItemData{
  var Image;
  String Name;
  String Discounted;

  PopularItemData(this.Image,this.Name, this.Discounted);

}

class CategoryData{
  var image;
  String name;

  CategoryData(this.name, this.image);
}