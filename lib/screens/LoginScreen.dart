import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'RegistrationScreen.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class LGS extends StatefulWidget {
  @override
  _LGSState createState() => _LGSState();
}

class _LGSState extends State<LGS> {
//  final _auth=FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(left: 16,right: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15,
                          color: const Color(0x78404040),
                          fontWeight: FontWeight.w700,
                          shadows: [
                            Shadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      onTap: (){
//                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RGS()) );
                      },
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(80.0, 12.0),
                        child: Container(
                          width: 55.0,
                          height: 55.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.elliptical(27.5, 27.5)),
                            color: const Color(0xcf7f1cff),
                          ),
                        ),
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 35,
                          color: const Color(0xff404040),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 30.0,),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      TextFormField(
                        onChanged: (value){
                          email=value;
                        },
                        validator: (input) => !input.contains('@') ? 'Not a valid Email' : null,
                        keyboardType:TextInputType.emailAddress ,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          labelText: "Email ID",
                          labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0x298742ff),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 16,),
                      TextFormField(
                        onChanged: (value){
                          password=value;
                        },
                        validator: (input) => input.length < 8 ? 'You need at least 8 characters' : null,
                        textAlign: TextAlign.center,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0x298742ff),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text("Forgot Password ?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                      ),
                      SizedBox(height: 20,),
//                      Transform.translate(
//                        offset: Offset(-100.0, 9.0),
//                        child: Container(
//                          width: 29.0,
//                          height: 29.0,
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.all(Radius.elliptical(14.5, 14.5)),
//                            color: const Color(0x697f1cff),
//                          ),
//                        ),
//                      ),
                      Container(
                        height: 50,
                        width: 200,
                        child: FlatButton(
                          onPressed:  () async{
                            try {
//                              final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
//                              if(user != null)
//                              {
//                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ZIPS()));
//                              }
                            }
                            catch(e){
                              print(e);
                            }
                          },
                          padding: EdgeInsets.all(0),
                          child: Ink(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color(0xff7f1cff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x298742ff),
                                  offset: Offset(0, 4),
                                  blurRadius: 42,
                                ),
                              ],
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              constraints: BoxConstraints(maxWidth: double.infinity,minHeight: 50),
                              child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: FlatButton(
                          onPressed: (){},
                          color: Colors.indigo.shade50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("images/facebook.png",height: 18,width: 18,),
                              SizedBox(width: 10,),
                              Text("SignIn with Phone Number",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: FlatButton(
                          onPressed: (){},
                          color: Colors.indigo.shade50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("images/google.png",height: 18,width: 18,),
                              SizedBox(width: 10,),
                              Text("SignIn with Google",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}