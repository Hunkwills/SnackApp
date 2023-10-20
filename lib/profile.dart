import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// class ProfileWidget extends StatelessWidget {
//   const ProfileWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: ProfileBodyWidget(),
//     );
//   }
// }



class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileBodyWidgetState();
}

class _ProfileBodyWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: ListTile(
                    leading: Icon(Icons.arrow_back_ios,)
                ),
              ),
              ListTile(
                title: Center(
                  child: Text(
                      'Bruno Kabuga'
                  ),
                ),
              ),
              ListTile(

                title: Center(
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 50, // Adjust the radius to control the size of the circle
                      backgroundImage: AssetImage('assets/Bruno.png',), // Provide the image URL or AssetImage
                    ),
                  ),
                ),



              ),
              ListTile(
                title: Icon(
                    CupertinoIcons.search
                ),
                subtitle: Center(
                  child: Text(
                      'Search'
                  ),
                ),
              ),
              Expanded(child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 10, bottom: 20, top: 20),
                              child: Text('I love food...\nPhilanthropy.',)),
                        ],
                      ),
                    ),

                    Card(
                      child: Row(
                        children: [
                          // Expanded(child: SizedBox(
                          //   width: 2,
                          // )),
                          Expanded(
                            flex: 1,
                            child: Container(

                                child: Icon(
                                  Icons.notifications,
                                  size: 30,
                                )
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: ListTile(
                              title: Text('Mute\nNotifications',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                ),),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        children: [
                          // Expanded(child: SizedBox(
                          //   width: 2,
                          // )),
                          Expanded(
                            flex: 1,
                            child: Container(

                                child: Icon(
                                  Icons.photo,
                                  size: 30,
                                )
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: ListTile(
                              title: Text('Media\nVisibility',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                ),),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ))

            ]
        ),
      ),
    ));
  }
}