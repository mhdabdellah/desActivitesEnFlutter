import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        // padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              // image: DecorationImage(
              //     fit: BoxFit.fill,
              //     image: NetworkImage(
              //         'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
            child: Container(
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(" 21:28 ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],

                  ),
                  
                  CircleAvatar(
                    radius:60,
                    child: ClipOval(
                      
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/86131274?s=400&u=8df33a0bef63b2ea6906e357e9c9f7f1c995ce97&v=4',
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Mohamed Abdellahi Sidi Mohamed Blal',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('mhdabdellahi0@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                ListTile(
                  leading: Icon(Icons.bungalow_rounded ,
                    color: Colors.black,
                    size: 30,
                  
                  ),
                  title: Text('Accueil'),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.assignment_returned ,
                    color: Colors.black,
                  ),
                  title: Text('Boite de reception'),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.contacts ,
                    color: Colors.black,
                  ),
                  title: Text('Contacts'),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.calendar_month_sharp ,
                    color: Colors.black,
                  
                  ),
                  title: Text('Calendrier'),
                  onTap: () => Navigator.pop(context),
                ),
                // Divider(),
                // ListTile(
                //   leading: Icon(Icons.settings),
                //   title: Text('Settings'),
                //   onTap: () => null,
                // ),
                // ListTile(
                //   leading: Icon(Icons.description),
                //   title: Text('Policies'),
                //   onTap: () => null,
                // ),
                // Divider(),
                // ListTile(
                //   title: Text('Exit'),
                //   leading: Icon(Icons.exit_to_app),
                //   onTap: () => null,
                // ),

              ],
            ),
          )
          
        ],
      ),
    );
  }
}