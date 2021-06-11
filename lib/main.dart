import 'package:flutter/material.dart';

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
    //------SingleChildScrollView------
    var orientation = MediaQuery.of(context).orientation == Orientation.portrait
        ? Axis.vertical
        : Axis.horizontal;

    return Scaffold(
      appBar: AppBar(
        title: Text("FCD 01"),
      ),

      body: Center(
        child: Flex(
          direction: orientation,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for(int i =0; i<3; i++)
              Container(
                margin: EdgeInsets.all(30),
                color: Colors.blue,
                key: ValueKey(i),
                width: 80,
                height: 80,
              ),
            Container(
              margin: EdgeInsets.all(30),
              color: Colors.green,
              width: 80,
              height: 80,
            )
          ],
        ),
      ),

      //------SingleChildScrollView------
      // body: SingleChildScrollView(
      //   scrollDirection: orientation,
      //   reverse: false,
      //   child: Center(
      //     child: Flex(
      //       direction: orientation,
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: List.generate(
      //           40,
      //           (index) => Container(
      //                 margin: EdgeInsets.all(30),
      //                 color: Colors.blue,
      //                 key: Key("$index"),
      //                 width: 80,
      //                 height: 80,
      //               )),
      //     ),
      //   ),
      // ),

      //------OrientationBuilder------
      // body: OrientationBuilder(
      //   builder: (context, orientation) {
      //     return Flex(
      //       direction: Axis.vertical,
      //       children: [
      //         TextField(),
      //         TextField(),
      //       ],
      //     );
      //   },
      // ),

      //-----MediaQuery.of-----
      // body: ListView.builder(
      //   itemCount: 100,
      //   scrollDirection: MediaQuery.of(context).size.width >
      //           MediaQuery.of(context).size.height
      //       ? Axis.horizontal
      //       : Axis.vertical,
      //   itemExtent: 200,
      //   itemBuilder: (BuildContext context, int index){
      //     return Center(
      //       child: Container(
      //         alignment: Alignment.center,
      //         color: Colors.blue,
      //         height: 100,
      //         width: 100,
      //         child: Text("aa"),
      //       ),
      //     );
      //   },
      // ),

      //---------OrientationBuilder----------
      // body: Center(
      //   child: OrientationBuilder(
      //     builder: (BuildContext context, Orientation orientation) {
      //       return Flex(
      //         direction: orientation == Orientation.landscape
      //             ? Axis.horizontal
      //             : Axis.vertical,
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           for(int i = 0; i<5; i++)
      //             Container(width: 100, height: 100, color: Colors.blue,),
      //         ],
      //       );
      //     },
      //
      //   ),
      // ),
    );
  }
}
