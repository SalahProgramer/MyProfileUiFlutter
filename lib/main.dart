import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "MyApp",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.blueAccent,
                        fontFamily: 'Pacifico'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 350,
                      height: 550,
                      margin:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 100),
                      padding: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff00b140),
                              Colors.white,
                              Colors.blue,
                            ],
                            transform: GradientRotation(0.5)),
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff00008b), width: 3),
                                  borderRadius: BorderRadius.circular(70)),
                            ),
                            radius: 70,
                            backgroundImage: AssetImage("images/salah.jpg"),
                          ),
                          Text(
                            "Salah yaaqba",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.blue,
                                fontFamily: 'Pacifico'),
                          ),
                          SizedBox(height: 5),
                          Text("Flutter Developer".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.blue,
                                  letterSpacing: 5,
                                  fontWeight: FontWeight.bold)),
                          Divider(
                              color: Colors.blueAccent,
                              height: 20,
                              thickness: 1),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.phone, size: 30),
                                Text("+972 056-821-7250",
                                    style: TextStyle(
                                        fontSize: 30, fontFamily: 'Pacifico'))
                              ],
                            ),
                            // child: TextFormField(
                            //   style: TextStyle(fontSize: 20,fontFamily: 'Pacifico'),
                            //   decoration: InputDecoration(
                            //       // fillColor: Colors.white,
                            //       //   filled: true,
                            //       labelText: ("Phone "),
                            //       prefixIcon: Icon(
                            //         Icons.phone,
                            //         color: Colors.black,
                            //       ),
                            //       border: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(60),
                            //           borderSide: BorderSide(
                            //             color: Colors.black,
                            //             width: 5,
                            //           ))),
                            //   keyboardType: TextInputType.phone,
                            // ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.email, size: 30),
                              Text("salahmustafanew904@gmail.com",
                                  style: TextStyle(
                                      fontSize: 20, fontFamily: 'Pacifico'))
                            ],
                          )),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ))
                ],
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/blue.jpg"),
                fit: BoxFit.fill,
              ))),
        ),
      ),
    );
  }
}
