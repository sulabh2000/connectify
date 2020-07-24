import 'package:flutter/material.dart';

myapp() {
  var mybody = Container(
    width: 350,
    height: 350,
    //color: Colors.blueGrey
    alignment: Alignment.bottomCenter,
    child: Text(
      'SULABH BANSAL',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://media-exp1.licdn.com/dms/image/C5103AQGayhGLmVRTkg/profile-displayphoto-shrink_400_400/0?e=1600905600&v=beta&t=QQjl9B4lG8tYtZk7PiTgFTbqOXvdkOSF1o4JXoEYhhY'),
        ),
        color: Colors.pink,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          width: 5,
          color: Colors.black,
        )),
  );
  // var myicon = Icon(Icons.menu);
  var myemailicon = Icon(Icons.email);
  var myemailbutton = IconButton(icon: myemailicon, onPressed: null);
  var child;
  var myhome = Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("CONNECTIFY"),
        backgroundColor: Colors.cyan[900],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[myemailbutton],
      ),
      body: Center(child: mybody),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('LIKE'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ));
  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
