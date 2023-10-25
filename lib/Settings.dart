import 'package:flutter/material.dart';
import 'package:tip_off/GlassMorphism.dart';

class SettingAge extends StatelessWidget {
  const SettingAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/b.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
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
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("SETTINGS",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
                      child: GlassMorphism(
                        blur: 20,
                        opacity: 0.1,
                        radius: 20.0,
                        child: TextButton(
                          onPressed: () {
                            // handle push to HomeScreen
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => LocalIssuesPage ())));
                          },
                          child: Column(
                            children: const [
                              Image(
                                image: AssetImage("images/account.jpeg"),
                                width: 58,
                                height: 58,
                              ),
                              Center(
                                child: Text(
                                  ' Account ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
                      child: GlassMorphism(
                        blur: 20,
                        opacity: 0.1,
                        radius: 20.0,
                        child: TextButton(
                          onPressed: () {
                            // handle push to HomeScreen
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => LocalIssuesPage ())));
                          },
                          child: Column(
                            children: const [
                              Image(
                                image: AssetImage("images/p.jpeg"),
                                width: 58,
                                height: 58,
                              ),
                              Center(
                                child: Text(
                                  ' Privacy & Security ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
                      child: GlassMorphism(
                        blur: 20,
                        opacity: 0.1,
                        radius: 20.0,
                        child: TextButton(
                          onPressed: () {
                            // handle push to HomeScreen
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => LocalIssuesPage ())));
                          },
                          child: Column(
                            children: const [
                              Image(
                                image: AssetImage("images/help.jpeg"),
                                width: 58,
                                height: 58,
                              ),
                              Center(
                                child: Text(
                                  ' Help ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
                      child: GlassMorphism(
                        blur: 20,
                        opacity: 0.1,
                        radius: 20.0,
                        child: TextButton(
                          onPressed: () {
                            // handle push to HomeScreen
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => LocalIssuesPage ())));
                          },
                          child: Column(
                            children: const [
                              Image(
                                image: AssetImage("images/dark.jpeg"),
                                width: 58,
                                height: 58,
                              ),
                              Center(
                                child: Text(
                                  ' DarkMode ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: GlassMorphism(
                        blur: 20,
                        opacity: 0.1,
                        radius: 20.0,
                        child: TextButton(
                          onPressed: () {
                            // handle push to HomeScreen
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => LocalIssuesPage ())));
                          },
                          child: Row(
                            children: const [
                              SizedBox(width: 70,),
                              Center(
                                child: Text(
                                  ' About Us ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Image(
                                image: AssetImage("images/aboutus.jpeg"),
                                width: 58,
                                height: 58,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
