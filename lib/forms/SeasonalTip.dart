import 'package:flutter/material.dart';
import 'package:tip_off/GlassMorphism.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SeasonalPage extends StatelessWidget {
  TextEditingController _location = TextEditingController();
  TextEditingController _typeOfIssue = TextEditingController();
  TextEditingController _description = TextEditingController();

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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                  child: Text(
                    "SEASONAL TIP",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                Image(
                    image: AssetImage("images/seasonalPic.jpeg"),
                    width: 190,
                    height: 190),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 10),
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
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 0.0, 20.0, 10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Location: ",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      controller: _location,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.red),
                                          borderRadius:
                                              BorderRadius.circular(5.5),
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
                          // SizedBox(
                          //   child: Padding(
                          //     padding: const EdgeInsets.fromLTRB(
                          //         20.0, 0.0, 20.0, 10.0),
                          //     // child: Row(
                          //     //   children: [
                          //     //     // Expanded(
                          //     //     //   child: Text(
                          //     //     //     "Select Coordinates: ",
                          //     //     //     style: TextStyle(
                          //     //     //         fontSize: 18,
                          //     //     //         fontWeight: FontWeight.bold),
                          //     //     //     maxLines: 3,
                          //     //     //     overflow: TextOverflow.ellipsis,
                          //     //     //   ),
                          //     //     // ),
                          //     //     Expanded(
                          //     //       child: TextFormField(
                          //     //         decoration: InputDecoration(
                          //     //           focusedBorder: OutlineInputBorder(
                          //     //             borderSide:
                          //     //                 BorderSide(color: Colors.red),
                          //     //             borderRadius:
                          //     //                 BorderRadius.circular(5.5),
                          //     //           ),
                          //     //           enabledBorder: OutlineInputBorder(
                          //     //             borderSide: BorderSide(
                          //     //               color: Colors.black,
                          //     //             ),
                          //     //           ),
                          //     //           fillColor: Colors.red[50],
                          //     //         ),
                          //     //       ),
                          //     //     ),
                          //     //   ],
                          //     // ),
                          //   ),
                          // ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 0.0, 20.0, 10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "Type of Issue: ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                  ),),
                                  Expanded(
                                    child: TextFormField(
                                      controller: _typeOfIssue,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.red),
                                          borderRadius:
                                              BorderRadius.circular(5.5),
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
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 0.0, 20.0, 10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "Description: ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                  ),),
                                  Expanded(
                                    child: TextFormField(
                                      controller: _description,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.red),
                                          borderRadius:
                                              BorderRadius.circular(5.5),
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
                      // Navigator.push(context, MaterialPageRoute(builder: ((context) => )));
                      Map<String,String> dataToSave =  {
                        'location':_location.text,
                        'typeOfIssue':_typeOfIssue.text,
                        'decription':_description.text
                      };
                      FirebaseFirestore.instance.collection('seasonalTip').add(dataToSave);
                      _typeOfIssue.clear();
                      _location.clear();
                      _description.clear();
                      showDialog(context: context, builder: (context) => AlertDialog(title: Text("Issue raised successfully!"),actions: [
                        TextButton(onPressed:() => Navigator.pop(context), child: Text('OK'))
                      ],) );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8.0),
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
      ),
    );
  }
}
