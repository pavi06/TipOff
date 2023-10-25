import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tip_off/GlassMorphism.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu_sharp,color: Colors.black,))
        ],

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: (){
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
                  padding: const EdgeInsets.fromLTRB(0,10.0,0,0),
                  child: Text("PROFILE",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 10,),
                Image(image: AssetImage("images/user.jpeg"),width: 150,height: 150,),
                SizedBox(height: 10,),
                GlassMorphism(
                  blur: 20,
                  opacity: 0.2,
                  radius: 20,
                  child: SizedBox(
                    height: 200,
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30,),
                            Text(" Issues Raised : ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text(" Resolved : ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text(" Not Resolved : ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text(" Trust Score : ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ),
                    ),
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