import 'package:flutter/material.dart';
import 'package:tip_off/GlassMorphism.dart';

class ResolvedPage extends StatelessWidget {
  const ResolvedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.menu_sharp, color: Colors.black,))
        ],

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/b.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                child: Text("RESOLVED",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GlassMorphism(
                  blur: 20,
                  opacity: 0.1,
                  radius: 20.0,
                  child: SizedBox(
                    height: 35,
                      width: double.maxFinite,
                      child: Center(child: Text(" Crime ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0,0,12.0,0),
                child: GlassMorphism(
                  blur: 20,
                  opacity: 0.1,
                  radius: 20.0,
                  child: SizedBox(
                      height:35,
                      width: double.maxFinite,
                      child: Center(child: Text(" A girl  kidnapped by a man. ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    children: [
                      ListText(text: "lukyjgfhbhk,jol", image: "images/local.jpeg"),
                      SizedBox(height: 10,),
                      ListText(text: "lukyjgfhbhk,jol", image: "images/cal.jpeg"),
                      SizedBox(height: 10,),
                      ListText(text: "lukyjgfhbhk,jol", image: "images/p.jpeg"),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0,0,12.0,0),
                child: GlassMorphism(
                  blur: 20,
                  opacity: 0.1,
                  radius: 20.0,
                  child: Container(
                    width: double.maxFinite,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Details: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                          Text(" Resolved By: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                          Text(" Position: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                          Text(" ResolvedOn: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),)
      ,
    ),);
  }
}


class  ListText extends StatelessWidget {
  final String text;
  final String image;
  const ListText ({required this.text,
    required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,0),
            child: Image(image: AssetImage(this.image),width: 40,height: 40,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,0),
            child: Text( this.text ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ],
      ),

    );
  }
}

