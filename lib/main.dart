import 'package:flutter/material.dart';

/*void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});
    final int count=0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title:Text("SateFulWidget") ,),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              IconButton(onPressed: (){
                count++;
              }, icon: Icon(Icons.add),),
              Text("Counter $count"),
              IconButton(onPressed: (){
                count--;
              }, icon:Icon(Icons.remove)),

            ],
          ),
        ),
      )
    );

  }
}
*/


void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{

  MyApp({super.key});

 State<MyApp>createState() =>MyAppState() ;
}

class MyAppState extends State<MyApp>{
  int count =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(title:Text("SateFulWidget") ,),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    count++;
                  });

                }, icon: Icon(Icons.add),),
                Text("Counter $count"),
                IconButton(onPressed: (){
                  setState(() {
                    count--;
                  });
                }, icon:Icon(Icons.remove)),

              ],
            ),
          ),
        )
    );
  }

}