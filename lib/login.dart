import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'home.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  void initState() {
    super.initState();
    readUsername();
  }

  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.greenAccent.shade400, Colors.blueAccent.shade700],
                )),
          ),
          Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text("username"),
                    SizedBox(height: 15),
                    Container(
                      width: 350,
                      child: TextField(
                        onChanged: (inpt) {
                          username = inpt;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'username',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("password"),
                    SizedBox(height: 15),
                    Container(
                      width: 350,
                      child: TextField(
                        onChanged: (inpt) {
                          password = inpt;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'password',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextButton(
                      onPressed: () async {
                        if(username.length > 0 && password.length > 0){
                          var response = login(username, password);
                          if(response[0]){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                            var storage = new FlutterSecureStorage();
                            await storage.write(key: "username", value: username);
                            await storage.write(key: "password", value: password);
                            await storage.write(key: "session", value: response[1]);
                          }else{
                            showDialog(
                                context: context,
                                builder: (context){
                                  return AlertDialog(
                                    title: Text("error"),
                                    content: Text("username/password wrong or server could be down"),
                                    actions: [
                                      TextButton(onPressed: () => Navigator.of(context).pop(), child: Text("OK"))
                                    ],
                                  );
                                });
                          }
                        }else{
                          showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("error"),
                                  content: Text("type in your username + password"),
                                  actions: [
                                    TextButton(onPressed: () => Navigator.of(context).pop(), child: Text("OK"))
                                  ],
                                );
                              });
                        }
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 1.3,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 8), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "OR",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "REGISTER",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 1.3,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 8), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

void readUsername() async {
  final storage = new FlutterSecureStorage();
  var username = await storage.read(key: "username");
  if (username != null) {
    print('yuhuuu');
  }
}

List login(String username, String password) {
  print('ok');
  return [true, "k8t24fg6o5pb2cf25bfql2bc"];
}