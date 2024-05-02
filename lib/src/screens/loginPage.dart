import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  // LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      // appBar: AppBar(
      //   title: Text('Proyecto Final'),
      // ),
      body: Stack (
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 60),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors :[Color(0x8B84A9F3),
                      Color(0x8B46A1E7),
                      Color(0x8B0266FC),]
                )
              ),
            child: Image.asset("assets/images/userLogin.png",
              height: 250,
              ),
          ),
          Center(
            child: Card (

              margin: const EdgeInsets.only(left: 30, right: 20, top: 260),
              //alt Enter
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Column (
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Usuario',

                      ),
                    ),
                  SizedBox(height: 40,),
                  TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Contraseña',
                      ),
                    obscureText: true,
                  ),
                    SizedBox(height: 40),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.black),
                      onPressed:() {

                      },
                      child: Text('Looks like a RaisedButton')
                    )
                  ]
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}