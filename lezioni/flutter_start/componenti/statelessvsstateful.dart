import 'package:flutter/material.dart';

void main() {
  runApp(App1777()); //lancio in esecuzione un componente, la mia app
}
/*digitando s ho i template per i stefull*/

class App1777 extends StatelessWidget {
  //creo uno stetless widget chiamato App1777
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //l app sara una material app
      home:
          HomePage(), //l applicazione )App1777 avra una home che andro a definire
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //l home page ritorna una scaffold cioè una pagina
      appBar: AppBar(
        //quetsa pagina avra una barra di navigazione
        title: Text('Le tue carte di credito'), //titolo barra di navigazione
      ),
      body: Column(
        //sotto la barra avro un body, utilizzero un componente
        //che permette di incolonnare i componenti al suo interno
        children: [
          //quindi prendo dei childre, gli elementi da incolonnare
          BankView(bank: 'SanPaolo'), //righe che verranno incolonnate
          BankView(bank: 'Banca Sella'),
        ],
      ),
    );
  }
}

class BankView extends StatefulWidget {
  BankView({this.bank = ''});
  final String bank;
  @override
  State<BankView> createState() {
    return _BankViewState();
  }
}

class _BankViewState extends State<BankView> {
  bool active = false;

  void toggleCard() {
    setState(() {
      active = !active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: active
          ? Colors.white
          : Colors.grey
              .shade400, //creo un margine su tutti i lati interno a BankView
      child: Row(
        children: <Widget>[
          //questa card avra un figlio, che è una row, ovvero speculare del column
          //posiziona i figli sulla stessa riga quindi avro un testo po, in riga un bottone
          Icon(Icons.credit_card,
              size: 14), //inserisco un icona carta di credito
          SizedBox(
            width: 16,
          ), //componente fittizio per separare gli alrti nella riga
          Text(
            widget.bank,
            style: TextStyle(fontWeight: FontWeight.bold),
          ), //nome della carta/banca
          Expanded(
              child: Container()), //componente fittizio che 'allarga' il figlio
          //quanto possibile, per occupare tutto lo spazio
          FlatButton(
              onPressed: toggleCard,
              child: Text(active ? 'Disattiva' : 'Attiva'))
        ],
      ),
    );
  }
}
