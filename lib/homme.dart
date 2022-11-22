import 'package:activityapp/navBar.dart';
import 'package:flutter/material.dart';


class Homme extends StatefulWidget {
  const Homme({Key? key}) : super(key: key);

  @override
  State<Homme> createState() => _HommeState();
}

class _HommeState extends State<Homme> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Crrection des Activites"),
        // actions: [
        //   TextButton(onPressed:() {
        //             print("back");
        //              Navigator.push(
        //                               context,
        //                               MaterialPageRoute(builder: (context) => const Homme()),
        //                             );
                        
        //           }, child: Icon(Icons.arrow_circle_left_sharp ,
        //             color: Colors.black,
        //           ),)
        // ],

      ),
      
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://thumbs.dreamstime.com/z/west-africa-mauritania-local-resident-waiting-camel-to-eat-prickly-leaves-tree-has-survived-sands-236037608.jpg")),
              ),
          ),
          Positioned(
            // top: 130,
            bottom: 50,
            left: 10,
            right: 10,
            child: Container(
              width: 400,
              height: 200,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 35.0,),
                child: Text("""
                  مــــــــلانَ يلّ مـــــــــانكد     نسْترْ عنّك عُيُـــــــــــوبِ

                  لا تكبظـــنِ باذنــــوب حَدْ     ألا تكبظــــنِ باذنــــــوبِ

                  أربع تيفلواتن كل واحدة منهم 7 متحركين.
                """),
              ),
            ),
          )
        ]
      ),
      drawer: NavBar(),
      
    );
  }

}