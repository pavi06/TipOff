import 'package:flutter/material.dart';
import 'package:tip_off/GlassMorphism.dart';
import 'package:tip_off/home.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

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
          child: Column(
            children: [
              const SizedBox(height: 120,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,8.0,20.0,10),
                child: GlassMorphism(
                  blur: 20,
                  opacity: 0.2,
                  radius: 20,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0),
                            child: Row(
                              children: [
                                Expanded(child: Text("ID Proof: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                                Expanded(
                                  child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red),
                                        borderRadius: BorderRadius.circular(5.5),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                        ),
                                      ),
                                      fillColor: Colors.red[50],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //captcha Insert
                        SizedBox(
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0),
                            child: Row(
                              children: [
                                Expanded(child: Text("Code: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                                Expanded(
                                  child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: "Captcha",
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red),
                                        borderRadius: BorderRadius.circular(5.5),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                        ),
                                      ),
                                      fillColor: Colors.red[50],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GlassMorphism(
                blur: 20,
                opacity: 0.1,
                radius: 20.0,
                child: TextButton(
                  onPressed: () {
                    // handle push to HomeScreen
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePage())));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}