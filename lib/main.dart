
import 'dart:developer';
import 'dart:math';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Ex.dart';



void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => SecondScreen(),
      // When navigating to the "/second" route, build the third widget.
      '/third': (context) => thirdscreen(),

    },
    theme: ThemeData(
      // Define the default brightness and colors.
      brightness: Brightness.dark,
      primaryColor: Colors.red,
      accentColor: Colors.orangeAccent.withAlpha(90),

      // Define the default font family.
      fontFamily: 'Raleway',

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline4: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.bold,),

        headline5: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold,),
        headline6: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    ),

  ));
}

class FirstScreen extends StatelessWidget {
  _getBackgroundColor() {
    return Container(
      color: Colors.black,
    );
  }

  _getLoginButtons(BuildContext context) {
    return <Widget>[
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        width: double.infinity,
        child: FlatButton(
          color: Colors.red,
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left :5 , right :5),
          splashColor: Colors.orangeAccent.withAlpha(90),

          child: const Text('A' ,style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: 'Raleway')),
          onPressed: ()  {
            Navigator.pushNamed(context, '/second');

          },
        ),

      ),
      Spacer(),
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        width: double.infinity,
        child: FlatButton(
          color: Colors.orangeAccent,
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left :5 , right :5),
          splashColor: Colors.red.withAlpha(120),

          child: const Text('B' ,style: TextStyle(fontSize: 30 ,color: Colors.white)),
          onPressed: ()  {
            Navigator.pushNamed(context, '/third');

          },
        ),

      ),

    ];
  }

  _getContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 50.0,
        ),
        Spacer(),
        Image(
          image: AssetImage("assets/images/dumball.png"),
          width: 150.0,
        ),

        Text(
          "Strong",
          style: TextStyle(color: Colors.white, fontSize: 50,fontWeight: FontWeight.w500),
        ),
        Container(
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
          alignment: Alignment.center,
          child: Text(
            "Created by Asaf Ben Gera.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Spacer(),
        ..._getLoginButtons(context),
        Spacer(),

        Spacer()

      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            _getBackgroundColor(),
            _getContent(context),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {

  static var ex1 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex2 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex3 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex4 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex5 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex6 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex7 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex8 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex9 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex10 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());




  _getBackgroundColor() {
    return Container(
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(title: const Text('Back Workout'),backgroundColor: Colors.red,

      ),

      body: Center(

          child: Column(
              children:[
                _getBackgroundColor(),

                Row( crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: Text('Exercise',style:Theme.of(context).textTheme.headline4,textAlign: TextAlign.center,

                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text('Set 1',style:Theme.of(context).textTheme.headline4,textAlign: TextAlign.center,

                        ),                  ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text('Set 2',style:Theme.of(context).textTheme.headline4,textAlign: TextAlign.center,

                        ),                  ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text('Set 3',style:Theme.of(context).textTheme.headline4,textAlign: TextAlign.center,

                        ),                  ),


                    ]),

                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex1.id ==-1 ? "":ex1.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex1.name = text;
                            ex1.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex1.set1 == 0 ?"":ex1.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex1.UpdateSet(1,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex1.set2 == 0 ?"":ex1.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex1.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex1.set3 == 0 ?"":ex1.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex1.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex2.id ==-1 ? "":ex2.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex2.name = text;
                            ex2.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex2.set1 == 0 ?"":ex2.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(1,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex2.set2 == 0 ?"":ex2.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex2.set3 == 0 ?"":ex2.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex3.id ==-1 ? "":ex3.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex3.name = text;
                            ex3.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex3.set1 == 0 ?"":ex3.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex3.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex3.set2 == 0 ?"":ex3.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex3.set3 == 0 ?"":ex3.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex3.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex4.id ==-1 ? "":ex4.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex4.name = text;
                            ex4.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex4.set1 == 0 ?"":ex4.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex4.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex4.set2 == 0 ?"":ex4.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex4.set3 == 0 ?"":ex4.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex4.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex5.id ==-1 ? "":ex5.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex5.name = text;
                            ex5.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex5.set1 == 0 ?"":ex5.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex5.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex5.set2 == 0 ?"":ex5.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex5.set3 == 0 ?"":ex5.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex5.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex6.id ==-1 ? "":ex6.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex6.name = text;
                            ex6.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex6.set1 == 0 ?"":ex6.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex6.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex6.set2 == 0 ?"":ex6.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex6.set3 == 0 ?"":ex6.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex6.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex7.id ==-1 ? "":ex7.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex7.name = text;
                            ex7.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex7.set1 == 0 ?"":ex7.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex7.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex7.set2 == 0 ?"":ex6.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex7.set3 == 0 ?"":ex7.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex7.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex8.id ==-1 ? "":ex8.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex8.name = text;
                            ex8.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex8.set1 == 0 ?"":ex8.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex8.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex8.set2 == 0 ?"":ex6.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex8.set3 == 0 ?"":ex8.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex8.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex9.id ==-1 ? "":ex9.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex9.name = text;
                            ex9.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex9.set1 == 0 ?"":ex9.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex9.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex9.set2 == 0 ?"":ex6.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex9.set3 == 0 ?"":ex9.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex9.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),


























              ]

          )



      ),

    );
  }

}
class thirdscreen extends StatelessWidget {
  //List<Ex> workout=  List<Ex>();
  static var ex1 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex2 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex3 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex4 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex5 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex6 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex7 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex8 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex9 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());
  static var ex10 = new Ex(-1,"",0,0,0,DateTime.now(), DateTime.now());




  _getBackgroundColor() {
    return Container(
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(title: const Text('Back Workout'),backgroundColor: Colors.orangeAccent,

      ),

      body: Center(

          child: Column(
              children:[
                _getBackgroundColor(),

                Row( crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                  Expanded(
                    child: Text('Exercise',style:Theme.of(context).textTheme.headline5,textAlign: TextAlign.center,

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text('Set 1',style:Theme.of(context).textTheme.headline5,textAlign: TextAlign.center,

                    ),                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text('Set 2',style:Theme.of(context).textTheme.headline5,textAlign: TextAlign.center,

                    ),                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text('Set 3',style:Theme.of(context).textTheme.headline5,textAlign: TextAlign.center,

                    ),                  ),


                ]),

                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText:ex1.id ==-1 ? "":ex1.name,
                         // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                          hintStyle: Theme.of(context).textTheme.headline6,
                      ),
                      onChanged: (text) {
                        ex1.name = text;
                        ex1.id=0;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: ex1.set1 == 0 ?"":ex1.set1.toString(),
                        hintStyle: Theme.of(context).textTheme.headline6,
                      ),

                      keyboardType: TextInputType.number,
                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                      onChanged: (num) {
                        var val = int.tryParse(num);
                        assert(val is int);
                        if (val == null)
                          val = 0;
                        ex1.UpdateSet(1,val);

                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: ex1.set2 == 0 ?"":ex1.set2.toString(),
                        hintStyle: Theme.of(context).textTheme.headline6,
                      ),

                      keyboardType: TextInputType.number,
                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                      onChanged: (num) {
                        var val = int.tryParse(num);
                        assert(val is int);
                        if (val == null)
                          val = 0;
                        ex1.UpdateSet(2,val);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: ex1.set3 == 0 ?"":ex1.set3.toString(),
                        hintStyle: Theme.of(context).textTheme.headline6,
                      ),

                      keyboardType: TextInputType.number,
                      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                      onChanged: (num) {
                        var val = int.tryParse(num);
                        assert(val is int);
                        if (val == null)
                          val = 0;
                        ex1.UpdateSet(3,val);
                      },
                    ),
                  ),


                ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex2.id ==-1 ? "":ex2.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex2.name = text;
                            ex2.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex2.set1 == 0 ?"":ex2.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(1,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex2.set2 == 0 ?"":ex2.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex2.set3 == 0 ?"":ex2.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex3.id ==-1 ? "":ex3.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex3.name = text;
                            ex3.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex3.set1 == 0 ?"":ex3.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex3.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex3.set2 == 0 ?"":ex3.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex3.set3 == 0 ?"":ex3.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex3.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex4.id ==-1 ? "":ex4.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex4.name = text;
                            ex4.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex4.set1 == 0 ?"":ex4.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex4.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex4.set2 == 0 ?"":ex4.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex4.set3 == 0 ?"":ex4.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex4.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex5.id ==-1 ? "":ex5.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex5.name = text;
                            ex5.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex5.set1 == 0 ?"":ex5.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex5.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex5.set2 == 0 ?"":ex5.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex5.set3 == 0 ?"":ex5.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex5.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex6.id ==-1 ? "":ex6.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex6.name = text;
                            ex6.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex6.set1 == 0 ?"":ex6.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex6.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex6.set2 == 0 ?"":ex6.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex6.set3 == 0 ?"":ex6.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex6.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex7.id ==-1 ? "":ex7.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex7.name = text;
                            ex7.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex7.set1 == 0 ?"":ex7.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex7.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex7.set2 == 0 ?"":ex6.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex7.set3 == 0 ?"":ex7.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex7.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex8.id ==-1 ? "":ex8.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex8.name = text;
                            ex8.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex8.set1 == 0 ?"":ex8.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex8.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex8.set2 == 0 ?"":ex6.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex8.set3 == 0 ?"":ex8.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex8.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:ex9.id ==-1 ? "":ex9.name,
                            // hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.red)
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),
                          onChanged: (text) {
                            ex9.name = text;
                            ex9.id=0;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex9.set1 == 0 ?"":ex9.set1.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex9.UpdateSet(2,val);

                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex9.set2 == 0 ?"":ex6.set2.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex2.UpdateSet(2,val);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ex9.set3 == 0 ?"":ex9.set3.toString(),
                            hintStyle: Theme.of(context).textTheme.headline6,
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                          onChanged: (num) {
                            var val = int.tryParse(num);
                            assert(val is int);
                            if (val == null)
                              val = 0;
                            ex9.UpdateSet(3,val);
                          },
                        ),
                      ),


                    ]),


























              ]

          )



      ),

    );
  }
}