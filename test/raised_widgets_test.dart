import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:raised_widgets/raised_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(
              15.0,
            ),
            width: double.infinity,
            height: 370,
            child: RaisedWidget(
              style: RaisedWidgetStyle(
                topColor: Colors.white,
                backColor: Colors.black12,
                distance: 15,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: RaisedWidget(
                          style: RaisedWidgetStyle(
                            topColor: Theme.of(context).primaryColor,
                            backColor: Theme.of(context).primaryColorDark,
                            distance: 5,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "I'm a subtle raised widget",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: RaisedWidget(
                          style: RaisedWidgetStyle(
                            topColor: Theme.of(context).primaryColor,
                            backColor: Theme.of(context).primaryColorDark,
                            distance: 15,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.lightBlueAccent)),
                            child: Center(
                              child: Text(
                                "I'm bigger and using a border",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: RaisedWidget(
                                style: RaisedWidgetStyle(
                                  topColor: Colors.deepPurpleAccent,
                                  backColor: Colors.deepPurple,
                                  distance: 5,
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Container(
                              child: RaisedWidget(
                                style: RaisedWidgetStyle(
                                  topColor: Colors.greenAccent,
                                  backColor: Colors.green,
                                  distance: 10,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Container(
                              child: RaisedWidget(
                                style: RaisedWidgetStyle(
                                  topColor: Colors.orangeAccent,
                                  backColor: Colors.deepOrangeAccent,
                                  distance: 20,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
