
import 'package:flutter/material.dart';
import 'package:my_3_app/exercise.dart';
import 'exercise.dart';



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

          child: const Text('A' ,style: TextStyle(fontSize: 30, color: Colors.white)),
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
  // _setA(){
  //   var bench = ￿￿exercise("bench",[1,2,3]);
  // }
  _getBackgroundColor() {
    return Container(
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chest Workout'),backgroundColor: Colors.red,

      ),
      body: Center(
          child: Stack(
              children:[
                _getBackgroundColor(),



                // TextField(
                //         style: TextStyle(color: Colors.white),
                //         obscureText: false,
                //       decoration: InputDecoration(
                //         fillColor: Colors.white,
                //         hintText: "Enter your email",
                //         border: OutlineInputBorder(),
                //         labelText: 'Name',
                //         labelStyle: new TextStyle(
                //             color: const Color(0xFFFFFFFF)
                //
                //         ),
                //     )
                //
                // ),
                Spacer(),

                Table(
//          defaultColumnWidth:
//              FixedColumnWidth(MediaQuery.of(context).size.width / 3),
                  border: TableBorder.symmetric(
                      inside: BorderSide(width: 3, color: Colors.yellow),
                      outside: BorderSide(width: 1)),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(children: [
              TableCell(child: Center(child: Text('Exercise',style: TextStyle(color: Colors.red,fontSize: 24,fontWeight: FontWeight.bold)))),
              TableCell(
                child: Center(child: Text('Set 1',style: TextStyle(color: Colors.red,fontSize: 24,fontWeight: FontWeight.bold)))
              ),
              TableCell(child: Center(child: Text('Set 2',style: TextStyle(color: Colors.red,fontSize: 24,fontWeight: FontWeight.bold)))),
              TableCell(child: Center(child: Text('Set 3',style: TextStyle(color: Colors.red,fontSize: 24,fontWeight: FontWeight.bold)))),
            ]),
            TableRow(children: [
              TableCell(
                child: Center(child: Text('Chest Press',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('20',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('30',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
              ),
              TableCell(
                child: Center(child: Text('40',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
                verticalAlignment: TableCellVerticalAlignment.middle,
              ),
            ]),
            TableRow(children: [
              TableCell(
                child: Center(child: Text('Flys',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('10',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('10',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
              ),
              TableCell(
                child: Center(child: Text('10',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
                verticalAlignment: TableCellVerticalAlignment.middle,
              ),
            ]),
            TableRow(children: [
              TableCell(
                child: Center(child: Text('M press',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('1',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('2',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
              ),
              TableCell(
                child: Center(child: Text('3',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
                verticalAlignment: TableCellVerticalAlignment.middle,
              ),
            ]),
            TableRow(children: [
              TableCell(
                child: Center(child: Text('Curls',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('15',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('16',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
              ),
              TableCell(
                child: Center(child: Text('20',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold))),
                verticalAlignment: TableCellVerticalAlignment.middle,
              ),
            ]),


          ],
        ),

                Spacer(),
                Spacer(),





              ]

          )



      ),

    );
  }
}
class thirdscreen extends StatelessWidget {
  _getBackgroundColor() {
    return Container(
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Back Workout'),backgroundColor: Colors.orangeAccent,

      ),
      body: Center(
          child: Stack(
              children:[
                _getBackgroundColor(),



              ]

          )



      ),

    );
  }
}