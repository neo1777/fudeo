import 'package:flutter/material.dart';

void main() {
  runApp(App1777());
}

class App1777 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playlist'),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [PopupMenuItem(child: Text("Logout"))])
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.album),
                title: Text('Soldi'),
                subtitle: Text(
                    'Cantata da Mahmood, produzione di Dardust & Charlie Charls'),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.album),
                title: Text('Soldi'),
                subtitle: Text(
                    'Cantata da Mahmood, produzione di Dardust & Charlie Charls'),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}

class Drawer extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  bool _automaticLogin = false;

  void onAutomaticLoginChange(bool value) {
    setState(() {
      _automaticLogin = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Settings',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 32,
          ),
          ListTile(
            title: Text('Automatic login'),
            subtitle: Text('When enable, the user is automatically logged in'),
            trailing: Switch(
                value: _automaticLogin, onChanged: onAutomaticLoginChange),
          )
        ],
      ),
    );
  }
}
