import 'package:flutter/material.dart' ;

void main()
{
  runApp(Myapp()) ;
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool animated  = true ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aniamted Defualt Text Style"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: (){
              setState(() {
                animated = !animated ;
              });
            },
            child: AnimatedDefaultTextStyle(
              duration: Duration(seconds: 5),
              child: Text("Hello",style: TextStyle(color: Colors.red),),
              curve: Curves.bounceIn,
              style: animated ? TextStyle(color: Colors.red,fontSize: 35,fontWeight: FontWeight.bold) : TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal)
            ),
          ),
        ),
      ),
    );
  }
}
