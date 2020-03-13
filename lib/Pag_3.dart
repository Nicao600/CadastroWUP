import 'package:flutter/material.dart';

class Pag_3 extends StatefulWidget {
  @override
  _Pag_3State createState() => _Pag_3State();
}

class _Pag_3State extends State<Pag_3> {
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
      height: MediaQuery.of(context).size.height * 0.5,
      padding: EdgeInsets.all(20),
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            icon: Icon(Icons.phone),
            hintText: 'Telefone para contato',
          ),
        ),
        SizedBox(
          height: 40,
        ),
        TextFormField(
          keyboardType: TextInputType.url,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            icon: Icon(Icons.language),
            hintText: 'Link site/ingresso',
          ),
        ),
        SizedBox(
          height: 40,
        ),
        TextFormField(
          keyboardType: TextInputType.url,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            icon: Icon(Icons.perm_contact_calendar),
            hintText: 'Link rede social',
          ),
        ),
        //SizedBox(
         // height: 30,
       // ),
      ]),
    );
  }
}

class _Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: <Widget>[
         // SizedBox(
         //   height: 20,
        // ),
          Container(

            height: MediaQuery.of(context).size.height * 0.25,
           child:ButtonBar(
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
          ),
         // SizedBox(
           // height: 80,
         // ),
         Container(
           height: MediaQuery.of(context).size.height * 0.025,
         child: Text(
            'Developed by WUP',
            style: TextStyle(color: Colors.black45),

          ),
         ),
          Container(
            height: MediaQuery.of(context).size.height * 0.065,
           child: Text(
            'Support by wuprojectgo@gmail.com',
            style: TextStyle(color: Colors.black45),
          ),
          ),
        ],
      ),
    );
  }
}
