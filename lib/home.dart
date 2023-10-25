import 'package:flutter/material.dart';
import 'package:tip_off/Analytics.dart';
import 'package:tip_off/GlassMorphism.dart';
import 'package:tip_off/Notifi.dart';
import 'package:tip_off/Profile.dart';
import 'package:tip_off/Settings.dart';
import 'package:tip_off/forms/CLTip.dart';
import 'package:tip_off/forms/CrimeForm.dart';
import 'package:tip_off/forms/CyberTip.dart';
import 'package:tip_off/forms/SeasonalTip.dart';
import 'package:tip_off/forms/localIssues.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0, 0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GlassMorphism(
                          blur: 20,
                          opacity: 0.1,
                          radius: 20.0,
                          child: TextButton(
                            onPressed: () {
                              // handle push to HomeScreen
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: ((context)
                              =>
                              CrimePage()
                              ))
                              );
                            },
                            child: Column(
                              children: const [
                                Image(
                                  image: AssetImage("images/crimeicon.jpeg"),
                                  width: 55,
                                  height:60,
                                ),
                                Text(
                                  ' Crime Tip ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GlassMorphism(
                          blur: 20,
                          opacity: 0.1,
                          radius: 20.0,
                          child: TextButton(
                            onPressed: () {
                              // handle push to HomeScreen
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => CLPage())));
                            },
                            child: Column(
                              children: const [
                                Image(
                                  image: AssetImage("images/child.jpeg"),
                                  width: 45,
                                  height: 45,
                                ),
                                Text(
                                  ' ChildLabour Tip ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GlassMorphism(
                          blur: 20,
                          opacity: 0.1,
                          radius: 20.0,
                          child: TextButton(
                            onPressed: () {
                            },
                            child: Column(
                              children: const [
                                Image(
                                  image: AssetImage("images/f.jpeg"),
                                  width: 45,
                                  height: 45,
                                ),
                                Text(
                                  ' Emergency ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GlassMorphism(
                          blur: 20,
                          opacity: 0.1,
                          radius: 20.0,
                          child: TextButton(
                            onPressed: () {
                              // handle push to HomeScreen
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => SeasonalPage())));
                            },
                            child: Column(
                              children: const [
                                Image(
                                  image: AssetImage("images/seasonal.jpeg"),
                                  width: 45,
                                  height: 45,
                                ),
                                Text(
                                  ' Seasonal Tip ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GlassMorphism(
                          blur: 20,
                          opacity: 0.1,
                          radius: 20.0,
                          child: TextButton(
                            onPressed: () {
                              // handle push to HomeScreen
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => CyberTipPage())));
                            },
                            child: Column(
                              children: const [
                                Image(
                                  image: AssetImage("images/cybericon.jpeg"),
                                  width: 55,
                                  height: 60,
                                ),
                                Center(
                                  child: Text(
                                    ' Cyber Tip ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                    ),
                                    textAlign: TextAlign.center,
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
                        padding: const EdgeInsets.all(8.0),
                        child: GlassMorphism(
                          blur: 20,
                          opacity: 0.1,
                          radius: 20.0,
                          child: TextButton(
                            onPressed: () {
                              // handle push to HomeScreen
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => LocalIssuesPage ())));
                            },
                            child: Column(
                              children: const [
                                Image(
                                  image: AssetImage("images/lclIssues.jpeg"),
                                  width: 45,
                                  height: 45,
                                ),
                                Center(
                                  child: Text(
                                    ' LocalIssues Tip ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                    ),
                                    textAlign: TextAlign.center,
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
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GlassMorphism(
                    blur: 15,
                    opacity: 0.2,
                    radius: 0,
                    child: Container(
                        height: 100,
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> AnalyticsPage()));
                            }, child: Column(children: [
                              Image.asset("images/analyticIcon.jpeg", width: 35, height: 35,),
                              Text('Analytics', style: TextStyle(
                                  color: Colors.black, fontSize: 16))
                            ],)),
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
                            }, child: Column(children: [
                              Image.asset("images/user.jpeg", width: 35, height: 35,),
                              Text('User', style: TextStyle(
                                  color: Colors.black, fontSize: 16))
                            ],)),
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> NotifiPage()));
                            }, child: Column(children: [
                              Image.asset("images/notifiIcon.jpeg", width: 35, height: 35,),
                              Text('Notification', style: TextStyle(
                                  color: Colors.black, fontSize: 16))
                            ],)),
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingAge()));
                            }, child: Column(children: [
                              Image.asset("images/setting.jpeg", width: 35, height: 35,),
                              Text('Settings', style: TextStyle(
                                  color: Colors.black, fontSize: 16),)
                            ],)),
                          ],
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: GlassMorphism(
                    blur: 15,
                    opacity: 0.2,
                    radius: 20,
                    child: Container(
                        width: MediaQuery.of(context).size.width*0.85,
                        height: 300,
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Rectified    20', style: TextStyle(
                                      fontSize: 19, fontWeight: FontWeight.w500),),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('Pending      05', style: TextStyle(
                                      fontSize: 19, fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('In Progress  02', style: TextStyle(
                                      fontSize: 19, fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              //progress bar
                            ),
                          ],
                        )),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

