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
      body: Stack(
        children: <Widget>[
          //Sidebar(),
          Positioned(right: 0, top: 0, bottom: 0, child: Sidebar()),
          Positioned(left: 0, right: 100, top: 0, bottom: 0, child: Body())
        ],
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.grey.shade200,
      child: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(child: Container()),
          IconButton(icon: Icon(Icons.add, size: 20), onPressed: () {})
        ],
      )),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Contacts',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 32,
          ),
          Contact(
            name: 'Mario Rossi',
            address: 'Corso Vittorio Emanuele II, Torino',
          ),
          Contact(
            name: 'Pablo Escobar',
            address: 'via della fresca, Torino',
          ),
          Contact(
            name: 'Mario Mario',
            address: 'Corso corso, Citta',
          ),
        ],
      ),
    ));
  }
}

class Contact extends StatelessWidget {
  Contact({@required this.name = '', @required this.address = ''});
  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          address,
          style: TextStyle(fontSize: 12),
        ),
        leading: Icon(
          Icons.person,
          color: Colors.indigo,
        ),
      ),
    );
  }
}
