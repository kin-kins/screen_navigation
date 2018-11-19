import "package:flutter/material.dart";

void main()
{
  runApp(new MaterialApp(
    title: "Screen Navigation",
    home: Home(),
  ));
}
 class Home extends StatefulWidget {
   @override
   _HomeState createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   @override
   Widget build(BuildContext context) {
     var _homecontroller=new TextEditingController();
     return (
     new Scaffold(
       appBar: new AppBar(
         title: Text("First Screen"),
         backgroundColor: Colors.redAccent,

       ),
       body: new ListView(
         children: <Widget>[
           new ListTile(
               title: new TextField(
           decoration: new InputDecoration(labelText: "enter data"),
           controller: _homecontroller,
         )
           ),
           new RaisedButton( child: new Text("Send to second screen"),
             onPressed: ()
     {
             var router;
             router = new MaterialPageRoute(
             builder: (BuildContext context)=>new Nextscreen(name:_homecontroller.text)
             );
             Navigator.push(context, router);
     }
     ),
         ]
       )
       )

     );//return
   }
 }
 
 class Nextscreen extends StatefulWidget {
   @override
    final String name;

   Nextscreen({Key key,this.name}):super(key:key);

   _NextscreenState createState() => _NextscreenState();
 }
 
 class _NextscreenState extends State<Nextscreen> {
   @override


   Widget build(BuildContext context) {
     return (
         new Scaffold(
             appBar: new AppBar(
               title: new Text("Second Screen"),
               backgroundColor: Colors.amberAccent,

             ),
             body: new ListView(
                 children:<Widget>[
                   new TextField(
                   decoration: new InputDecoration(hintText: "enter data",),
                 ),
                   new Text("${widget.name}")
             ])
         ));
   }
 }
 

