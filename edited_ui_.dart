import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';//import 'package:hexcolor/hexcolor.dart'
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

      User user1=FirebaseCurrentUser.user;

      var username1=user1.name.toString();///firebase
      var phno=user1.phoneNo.toString();
      var initial=username1[0];
      var url=user1.photoURL;//google login
      WIdget getText(){
          if (!url)
          return DecorationImage(
                          image: NetworkImage(url),
                          fit: BoxFit.cover,
                        );
          else
          return CircleAvatar(
  backgroundColor: Colors.brown.shade800,
  child: Text(initials),
)
      }

    return new Scaffold(
      body: new Stack(
        children: [
          ClipPath(
            child: Container(
              color: Color.fromRGBO(54, 12, 109, 0.8),
            ),
            clipper: getClipper(),
          ),
          Positioned(
            width: 350.0,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: [
                Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(127, 28, 255, 0),
                        image: getText() ,
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                SizedBox(height: 90.0),
                Center(
                    child: Text(
                  username1,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                SizedBox(height: 19.0),
                Center(
                    child: Text(phno
                  ,
                  style: TextStyle(
                    fontSize: 19,
                    fontStyle: FontStyle.italic,
                  ),
                )),
                SizedBox(height: 25.0),
                Container(
                    height: 50.0,
                    width: 285.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      //shadowColor: Colors.greenAccent,
                      color: Colors.grey[850],
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text('Edit Name',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    )),
                SizedBox(height: 25.0),
                Container(
                    height: 50.0,
                    width: 285.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      //shadowColor: Colors.yellowAccent,
                      color: Colors.blueGrey,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text('Edit Number',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    )),
                SizedBox(height: 25.0),
                Container(
                    height: 50.0,
                    width: 285.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      //shadowColor: Colors.black,
                      color: Colors.grey[850],
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text('Log Out',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
