import 'package:flutter/material.dart';
import 'package:tip_off/GlassMorphism.dart';

class CyberTipPage extends StatelessWidget {
  const CyberTipPage({Key? key}) : super(key: key);

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
                  child: Text("CYBER TIP",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ),
                Image(image: AssetImage("images/cyber.jpeg"),width: 190,height: 190),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: GlassMorphism(
                    blur: 20,
                    opacity: 0.2,
                    radius: 20,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0),
                              child: Row(
                                children: [
                                  Expanded(child: Text("Category of complaint: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,)),
                                  Expanded(
                                    child: TextFormField(
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
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0),
                              child: Row(
                                children: [
                                  Expanded(child: Text("Subcategory of complaint: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,)),
                                  Expanded(
                                    child: TextFormField(
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
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0),
                              child: Row(
                                children: [
                                  Expanded(child: Text("Approximate Date & Timing: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,)),
                                  Expanded(
                                    child: TextFormField(
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
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0),
                              child: Row(
                                children: [
                                  Expanded(child: Text("Reason for delay    in reporting: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,)),
                                  Expanded(
                                    child: TextFormField(
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
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0),
                              child: Row(
                                children: [
                                  Expanded(child: Text("Select coordinate ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,)),
                                  Expanded(
                                    child: TextFormField(
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
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0),
                              child: Row(
                                children: [
                                  Expanded(child: Text("Description: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,)),
                                  Expanded(
                                    child: TextFormField(
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
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                GlassMorphism(
                  blur: 20,
                  opacity: 0.1,
                  radius: 20.0,
                  child: TextButton(
                    onPressed: () {
                      // handle push to HomeScreen
                      // Navigator.push(context, MaterialPageRoute(builder: ((context) => )));
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
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}