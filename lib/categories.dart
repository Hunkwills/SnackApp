import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<PopularItemData> categoryDataList = [
    PopularItemData('assets/prosciutto.jpg', 'Prosciutto', 'Nope'),
    PopularItemData('assets/spinaci.jpg', 'Spinaci', 'Nope'),
    PopularItemData('assets/salamino.jpg', 'Salamino', 'Nope'),
    PopularItemData('assets/funghi.jpg', 'Funghi', 'Nope'),
    PopularItemData('assets/focaccia.jpg', 'Focaccia', 'Nope'),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: SingleChildScrollView(
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
                    'CATEGORIES'
                  ),
                  trailing: Icon(
                    Icons.share,
                    color: Theme.of(context).primaryColor,
                  ),

      ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: ListView.builder(
                      itemCount: categoryDataList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int i){
                        PopularItemData DataObj = categoryDataList[i];
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
                                    image: AssetImage(DataObj.Image),
                                    fit: BoxFit.cover,
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
                                      DataObj.Name,
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
                )

              ],
            ),
          ),

      ),
    );
  }
}
