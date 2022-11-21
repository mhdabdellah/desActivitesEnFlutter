import 'dart:io';

import 'package:activityapp/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  bool Rendez_vous = false;
  bool Urgence = false;
  bool Suivi = false;
  @override
  void initState() {
    super.initState();
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 100,
                    child: const Icon(
                      Icons.person,
                      size: 200,
                    ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () { 
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Signup()),
                            );
                    },
                    child: Center(child: Text("Utilisateur de l'application")),
                ),
                SizedBox(
                  height: 20,
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text("Elément"),
                    Text("Nomber")
                  ]
                  
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text("Rendez-vous"),
                      Text("1")
                    ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                      Text("Suivi"),
                      Text("2")
                    ],
                 
                ),
                SizedBox(
                  height: 20,
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Text("Notification"),
                        Text("7")
                      ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                // checkColor: primaryColor,
                                activeColor: Colors.blue,
                                value: Rendez_vous,
                                onChanged: (value) => setState(() {
                                      Rendez_vous = !Rendez_vous;
                                    })),
                            Text('Rendez-vous')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                // checkColor: primaryColor,
                                activeColor: Colors.blue,
                                value: Urgence,
                                onChanged: (value) => setState(() {
                                      Urgence = !Urgence;
                                      print("Urgence");
                                    })),
                            Text('Urgence')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                // checkColor: primaryColor,
                                activeColor: Colors.blue,
                                value: Suivi,
                                onChanged: (value) => setState(() {
                                      Suivi = !Suivi;
                                      print("Suivi");
                                    })),
                            Text('Suivi')
                          ],
                        )
                      ]
                    ),
                    Column(
                      children:[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.person,
                              // size: 200,
                            ),
                            Icon(
                              Icons.person,
                              // size: 200,
                            ),

                          ],
                          
                        ),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.person,
                              // size: 200,
                            ),
                            Icon(
                              Icons.person,
                              // size: 200,
                            ),

                          ],
                        )
                      ]
                    )
                  ]
                )
              ]     
            )
          )
        )
          
      )
    );

  }
}