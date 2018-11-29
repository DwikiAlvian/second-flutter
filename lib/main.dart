import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Just Title",
    home: new JustHome(),
    routes: <String, WidgetBuilder>{
      '/Second' : (BuildContext context) => new Second(),
      '/First' : (BuildContext context) => new JustHome(),

      '/Calendar' : (BuildContext context) => new CalendarPage(),
      '/Scan' : (BuildContext context) => new Scan(),
      '/Photo' : (BuildContext context) => new Photo(),
      '/Share' : (BuildContext context) => new Share(),
      '/Gaming' : (BuildContext context) => new Gaming(),
      '/Download' : (BuildContext context) => new Download(),
      '/Check' : (BuildContext context) => new Check(),
      '/Music' : (BuildContext context) => new Music(),
      '/Settings' : (BuildContext context) => new Settings(),
    },
  ));
}

class JustHome extends StatefulWidget {
  @override
  _JustHomeState createState() => _JustHomeState();
}

class _JustHomeState extends State<JustHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("This is Title"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.settings),
            onPressed: (){
              Navigator.pushNamed(context, '/Second');
            },
          )
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text("dwikialfian92@gmail.com"),
              accountName: new Text("Dwiki Alfian"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage("https://www.xboxnederland.nl/wp-content/uploads/2016/07/319630_screenshots_2015-05-19_00006.jpg"),
              ),
              decoration: BoxDecoration(
                image: new DecorationImage(image: new NetworkImage("https://cdn.images.express.co.uk/img/dynamic/143/590x/Red-Dead-Redemption-2-PC-724425.jpg"),
                fit: BoxFit.cover,
                )
              ),
            ),

            new JustList(ikon: Icons.home, teks: "Home Sweet Home",),
            new JustList(ikon: Icons.calendar_today, teks: "Open Calendar", link: '/Calendar',),
            new JustList(ikon: Icons.security, teks: "Scan Viruses", link: '/Scan',),
            new JustList(ikon: Icons.portrait, teks: "Photo Mode", link: '/Photo',),

            new Divider(height: 10, indent: 1, color: Colors.black,),

            new JustList(ikon: Icons.share, teks: "Share Something", link: '/Share',),
            new JustList(ikon: Icons.gamepad, teks: "Play Games", link: '/Gaming',),
            new JustList(ikon: Icons.file_download, teks: "Download Something", link: '/Download',),
            new JustList(ikon: Icons.check, teks: "Check Something", link: '/Check',),
            new JustList(ikon: Icons.music_note, teks: "Play Music", link: '/Music',),
            new JustList(ikon: Icons.settings_applications, teks: "Settings", link: '/Settings',),
            new JustList(ikon: Icons.close, teks: "Close",),
          ],
        )
      ),
    );
  }
}

class JustList extends StatelessWidget {
JustList ({this.ikon, this.teks, this.link});
final IconData ikon;
final String teks;
final String link;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pushNamed(context, link);
      },
      leading: new Icon(ikon),
      title: new Text(teks),
      trailing: new Icon(Icons.insert_link),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Second AppBar"),
      ),
      body: new Center(
        child: new RaisedButton(
          shape: RoundedRectangleBorder(),
          onPressed: (){
            Navigator.pop(context);
          },
          child: new Text("Just No"),
          color: Colors.blue,
          textColor: Colors.white,
        ),
      ),
    );
  }
}

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calendar"),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              trailing: new Icon(Icons.alarm),
              title: new Text("Set Alarm on Calendar"),
            )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          new Card(
            child: new Container(
              height: 125,
              child: new Center(
                child: new Text("Imagine this is Calendar"),
              ),
            ),
          ),

          new RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pop(context);
            },
            child: new Text("Go Back!"),
          )
        ],
      ),
    );
  }
}

class Scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Scanning Page"),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              trailing: new Icon(Icons.security),
              title: new Text("Scan!"),
            )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          new Card(
            child: new Container(
              height: 125,
              child: new Center(
                child: new Text("Imagine this is Scanner"),
              ),
            ),
          ),

          new RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pop(context);
            },
            child: new Text("Go Back!"),
          )
        ],
      ),
    );
  }
}

class Photo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Photo Mode Page"),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              trailing: new Icon(Icons.photo),
              title: new Text("Let's photo"),
            )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          new Card(
            child: new Container(
              height: 125,
              child: new Center(
                child: new Text("Imagine this is Camera Pop Up"),
              ),
            ),
          ),

          new RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pop(context);
            },
            child: new Text("Go Back!"),
          )
        ],
      ),
    );
  }
}

class Share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Share"),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              trailing: new Icon(Icons.screen_share),
              title: new Text("Share Something"),
            )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          new Card(
            child: new Container(
              height: 125,
              child: new Center(
                child: new Text("Imagine this is ShareIt App"),
              ),
            ),
          ),

          new RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pop(context);
            },
            child: new Text("Go Back!"),
          )
        ],
      ),
    );
  }
}

class Gaming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("let's Gaming"),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              trailing: new Icon(Icons.games),
              title: new Text("Search Games"),
            )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          new Card(
            child: new Container(
              height: 125,
              child: new Center(
                child: new Text("Imagine this is Game List"),
              ),
            ),
          ),

          new RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pop(context);
            },
            child: new Text("Go Back!"),
          )
        ],
      ),
    );
  }
}

class Download extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Download Something?"),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              trailing: new Icon(Icons.search),
              title: new Text("Find"),
            )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          new Card(
            child: new Container(
              height: 125,
              child: new Center(
                child: new Text("Imagine this is Website full of game"),
              ),
            ),
          ),

          new RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pop(context);
            },
            child: new Text("Go Back!"),
          )
        ],
      ),
    );
  }
}

class Check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Checking Page"),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              trailing: new Icon(Icons.check_box),
              title: new Text("Set something"),
            )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          new Card(
            child: new Container(
              height: 125,
              child: new Center(
                child: new Text("Imagine this is Check Box"),
              ),
            ),
          ),

          new RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pop(context);
            },
            child: new Text("Go Back!"),
          )
        ],
      ),
    );
  }
}

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Spotify"),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              trailing: new Icon(Icons.music_note),
              title: new Text("Search on Spotify"),
            )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          new Card(
            child: new Container(
              height: 125,
              child: new Center(
                child: new Text("Imagine this is Spotify List Music"),
              ),
            ),
          ),

          new RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pop(context);
            },
            child: new Text("Go Back!"),
          )
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Settings"),
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              trailing: new Icon(Icons.settings_input_component),
              title: new Text("Setting Something?"),
            )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          new Card(
            child: new Container(
              height: 125,
              child: new Center(
                child: new Text("Imagine this is Setting Page"),
              ),
            ),
          ),

          new RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.pop(context);
            },
            child: new Text("Go Back!"),
          )
        ],
      ),
    );
  }
}