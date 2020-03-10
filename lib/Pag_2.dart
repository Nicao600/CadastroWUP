import 'package:flutter/material.dart';

class Pag_2 extends StatefulWidget {
  @override
  _Pag_2State createState() => _Pag_2State();
}

class _Pag_2State extends State<Pag_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Center(
            child: Text(
          "Cadastro de eventos",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: ListView(
        children: <Widget>[
          _Text(),
          _Bottom(),
        ],
      ),
    );
  }
}

class _Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          maxLines: 10,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            icon: Icon(Icons.mic),
            hintText: 'Descrição do evento',
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            icon: Icon(Icons.location_on),
            hintText: 'Digite o endereço/local',
          ),
        )
      ]),
    );
  }
}

class _Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 19,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                  child: Text('Voltar'), color: Colors.blue, onPressed: () {}),
              RaisedButton(
                child: Text('Próximo'),
                color: Colors.blue,
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Developed by WUP',
            style: TextStyle(color: Colors.black45),
          ),
          Text(
            'Support by wuprojectgo@gmail.com',
            style: TextStyle(color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
