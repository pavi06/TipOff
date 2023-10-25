import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tip_off/Anlytcs/AnlytcTemp.dart';
import 'package:tip_off/GlassMorphism.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white30,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu_sharp,
                  color: Colors.black,
                ))
          ],
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
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
            child: ListView(
              padding: const EdgeInsets.fromLTRB(25.0,8.0,25.0,0),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,10.0,0,0),
                  child: Center(child: Text("ANALYTICS",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(height: 20,),
                GlassMorphism(
                  blur: 20.0,
                  opacity: 0.2,
                  radius: 20.0,
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AnlytcPage()));
                    },
                    title: ListText(text: " Crime"),
                    trailing: Image(image: AssetImage("images/crime.jpeg"),width: 70,height: 70,),
                  ),
                ),
                SizedBox(height: 10,),
                GlassMorphism(
                  blur: 20.0,
                  opacity: 0.2,
                  radius: 20.0,
                  child: ListTile(
                    title: ListText(text: "  Child Labour"),
                    trailing: Image(image: AssetImage("images/cl.jpeg"),width: 70,height: 70,),
                  ),
                ),
                SizedBox(height: 10,),
                GlassMorphism(
                  blur: 20.0,
                  opacity: 0.2,
                  radius: 20.0,
                  child: ListTile(
                    title: ListText(text: " Fire Rescue"),
                    trailing: Image(image: AssetImage("images/fire.jpeg"),width: 70,height: 70,),
                  ),
                ),
                SizedBox(height: 10,),
                GlassMorphism(
                  blur: 20.0,
                  opacity: 0.2,
                  radius: 20.0,
                  child: ListTile(
                    title: ListText(text: " Cyber"),
                    trailing: Image(image: AssetImage("images/cyber.jpeg"),width: 70,height: 70,),
                  ),
                ),
                SizedBox(height: 10,),
                GlassMorphism(
                  blur: 20.0,
                  opacity: 0.2,
                  radius: 20.0,
                  child: ListTile(
                    title: ListText(text: " Seasonal"),
                    trailing: Image(image: AssetImage("images/seasonal.jpeg"),width: 70,height: 70,),
                  ),
                ),
                SizedBox(height: 10,),
                GlassMorphism(
                  blur: 20.0,
                  opacity: 0.2,
                  radius: 20.0,
                  child: ListTile(
                    title: ListText(text: " Local Issues"),
                    trailing: Image(image: AssetImage("images/local.jpeg"),width: 70,height: 70,),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class  ListText extends StatelessWidget {
  final String text;
  const ListText ({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.ac_unit_outlined,color: Colors.black,),
          Text( this.text ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        ],
      ),

    );
  }
}

