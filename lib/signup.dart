import 'dart:io';

import 'package:activityapp/userInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  void initState() {
    super.initState();
  }

  
  var userNameController = TextEditingController();
  var userPhoneController = TextEditingController();
  bool Baccalaureat = false;
  bool BTS = false;
  bool Licence = false;
  bool Master = false;
  bool Doctorat = false;
  // final ref = databaseReference
  String? gender;
  
  

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
                   Row(
                    
                children: [
                      
                      Row(
                        children: [
                          Container(
                            child: Radio(
                                value: "Ajouter", 
                                groupValue: gender, 
                                onChanged: (value){
                                  setState(() {
                                      gender = value.toString();
                                  });
                                  print(gender);
                                },
                            ),
                          ),
                          Text("Ajouter"),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            child: Radio(
                                
                                value: "Modifier", 
                                groupValue: gender, 
                                onChanged: (value){
                                  setState(() {
                                      gender = value.toString();
                                      print(gender);
                                  });
                                },
                            ),
                          ),
                          Text("Modifer"),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            child: Radio(
                                  
                                  value: "Supprimer", 
                                  groupValue: gender, 
                                  onChanged: (value){
                                    setState(() {
                                        gender = value.toString();
                                        print(gender);
                                    });
                                  },
                            ),
                          ),
                          Text("Supprimer"),
                        ],
                      )
                  ],
                ),               
                
              
                TextFormField(
                  controller: userNameController,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Nom ',
                   
                    // border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: userPhoneController,
                  keyboardType: TextInputType.text,
                  // obscureText: true,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Prenom',
                    // border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: userPhoneController,
                  keyboardType: TextInputType.text,
                  // obscureText: true,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Adress',
                    // border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                // margin: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                // checkColor: primaryColor,
                                activeColor: Colors.blue,
                                value: Baccalaureat,
                                onChanged: (value) => setState(() {
                                      Baccalaureat = !Baccalaureat;
                                    })),
                            Text('Baccalauréat')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                // checkColor: primaryColor,
                                activeColor: Colors.blue,
                                value: BTS,
                                onChanged: (value) => setState(() {
                                      BTS = !BTS;
                                      print("BTS");
                                    })),
                            Text('BTS')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                // checkColor: primaryColor,
                                activeColor: Colors.blue,
                                value: Licence,
                                onChanged: (value) => setState(() {
                                      Licence = !Licence;
                                      print("Licence");
                                    })),
                            Text('Licence')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                // checkColor: primaryColor,
                                activeColor: Colors.blue,
                                value: Master,
                                onChanged: (value) => setState(() {
                                      Master = !Master;
                                      print("Master");
                                    })),
                            Text('Master')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                // checkColor: primaryColor,
                                activeColor: Colors.blue,
                                value: Doctorat,
                                onChanged: (value) => setState(() {
                                      Doctorat = !Doctorat;
                                      print("Doctorat");
                                    })),
                            Text('Doctorat')
                          ],
                        ),
                        
                      ],
                    ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Container(
                            
                            color: Colors.blue,
                            width: 190,
                            height: 200,
                            child: Center(
                              child: Text('CONFIRMER',
                                style: TextStyle(color: Colors.white)
                              
                              ),
                            )
                            
                          ),
                          onTap:() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const UserInfo()),
                            );
                          },
                        ),
                        Center(child: Text('Résultat'))
                      ],
                    )
                  ],
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}