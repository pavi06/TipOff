import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tip_off/GlassMorphism.dart';
import 'package:tip_off/IssueStatus/Pending.dart';
import 'package:tip_off/IssueStatus/Resolved.dart';
import 'package:tip_off/IssueStatus/Unresolved.dart';

class AnlytcPage extends StatelessWidget {
  const AnlytcPage({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.fromLTRB(25.0, 8.0, 25.0, 0),
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                      child: Center(
                          child: Text(
                        "CRIME",
                        style:
                            TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Image(image: AssetImage(),width: 190,height: 190),

                    GlassMorphism(
                      blur: 20.0,
                      opacity: 0.2,
                      radius: 20.0,
                      child: ListTile(
                        title: ListText(text: "Bomb planted on the forum mall."),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => NotResolvedPage())));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GlassMorphism(
                      blur: 20.0,
                      opacity: 0.2,
                      radius: 20.0,
                      child: ListTile(
                        title: ListText(
                            text:
                                "A man with a pistol revolving around the Vidhyartha school."),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => ResolvedPage())));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GlassMorphism(
                      blur: 20.0,
                      opacity: 0.2,
                      radius: 20.0,
                      child: ListTile(
                        title: ListText(
                            text:
                                " Man held for cheating 19 people, of Rs. 3 crore."),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => PendingPage())));
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListText extends StatelessWidget {
  final String text;

  const ListText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.black,
        ),
        Expanded(
          child: Text(
            this.text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}
