import 'package:flutter/material.dart';

class Day {
  final int nr;
  String task;
  Day(this.nr);
}

class Month {
  final String name;
  List<Day> days;

  Month(this.name, int daysNr) {
    days = List.generate(daysNr, (dayNr) => Day(dayNr + 1));
  }
}

final months = [
  Month('Gennaio', 31),
  Month('Febbraio', 28),
  Month('Marzo', 31),
  Month('Aprile', 30),
  Month('Maggio', 31),
  Month('Giugno', 30),
  Month('Luglio', 31),
  Month('Agosto', 31),
  Month('Settembre', 30),
  Month('Ottobre', 31),
  Month('Novembre', 30),
  Month('Dicembre', 31),
];
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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
