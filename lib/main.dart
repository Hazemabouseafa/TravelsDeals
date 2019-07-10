 import 'package:flutter/material.dart';

    void main() => runApp(MyApp());

    // the root widget of our application
    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.white,
            body: appbody(),
          ),
               );
      }
    }

    Widget appbody(){
      return Container(
        padding: EdgeInsets.fromLTRB(100,100,90,100),
        child: Column(
          children: <Widget>[
            intro(),
            SizedBox(height: 10.0),
            agencyname(),
            SizedBox(height: 50.0,),
            image(),
            SizedBox(height: 20.0,),
            loginbutton(),
            SizedBox(height: 10.0,),
            newuserbutton(),
          ],
        ),
      );
    }
    Widget intro(){
     return Text('Welcome to');
    }
    Widget agencyname(){
      return SingleChildScrollView(
        child: Row(
        children: <Widget>[
      Text('Travel',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text('Deals',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      )
        ],
        ),
      );
     }
     Widget loginbutton(){
       return ButtonTheme(
         minWidth: 250,
         height: 50,
         child: RaisedButton(
           child: Text('User Login',
           style: TextStyle(
             fontSize: 15.0,
             color: Colors.white,
           ),),
         color: Colors.deepOrange,
         onPressed: (){
         },
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
       ),
       );
     }
        Widget newuserbutton(){
       return ButtonTheme(
         minWidth: 250,
         height: 50,
         child: OutlineButton(
           child: Text('New User Signup',
           style: TextStyle(
             fontSize: 15.0,
             color: Colors.deepOrange,
           ),),
         color: Colors.white,
         onPressed: (){
         },
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
         borderSide: BorderSide(color: Colors.deepOrange),
       ),
       );
     }
      Widget image(){
        return Column(
          children: <Widget>[
            Image.asset('images/image1.jpg'),
          ],
        );
      }