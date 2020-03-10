import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class ItemDrop {
  const ItemDrop(this.name);

  final String name;
}

class ItemRadio {
  int id;
  String tipo;

  ItemRadio({this.id, this.tipo});
}

class Pag_1 extends StatefulWidget {
  @override
  _Pag_1State createState() => _Pag_1State();
}

class _Pag_1State extends State<Pag_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {},
        ),
        title: Center(
            child: Text("Cadastro de eventos",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            )
        ),
      ),
      body: ListView(
        children: <Widget>[
          _Text(),
          _Dropdown(),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 20,),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: 'Nome de evento',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
          SizedBox(height: 15,),

        ],
      ),
    );
  }

}


class _Bottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Dia:', style: TextStyle(fontSize: 15),),
          new RaisedButton(
              child: new Text('Selecione a data'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(2020, 1, 1),
                    maxTime: DateTime(2021, 12, 31),
                    onChanged: (date) {
                      print('change $date');
                    },
                    onConfirm: (date) {

                    },
                    currentTime: DateTime.now(),
                    locale: LocaleType.pt);
              }
          ),
          SizedBox(height: 25,),
          Text('Hora:', style: TextStyle(fontSize: 15),),
          new RaisedButton(
              child: new Text('Selecione a hora'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                DatePicker.showTimePicker(context,
                    showTitleActions: true,
                    onChanged: (date) {
                      print('change $date');
                    },
                    onConfirm: (date) {
                      print('confirm $date');
                    },
                    currentTime: DateTime.now(),
                    locale: LocaleType.pt);
              }
          ),
          SizedBox(height: 25,),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                  child: Text('Voltar'),
                  color: Colors.blue,
                  onPressed: () {


                  }
              ),
              RaisedButton(
                child: Text('Próximo'),
                color: Colors.blue,
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 40,),
          Text('Developed by WUP', style: TextStyle(color: Colors.black45),),
          Text('Support by wuprojectgo@gmail.com',
            style: TextStyle(color: Colors.black45),),
        ],
      ),
    );
  }
}

class _Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<_Dropdown> {
  ItemDrop selectedUser;

  List<ItemDrop> users = <ItemDrop>[
    const ItemDrop('Bar'),
    const ItemDrop('Festa universitária'),
    const ItemDrop('Happy hour'),
    const ItemDrop('Palestra/Curso'),
    const ItemDrop('Restaurante'),
    const ItemDrop('Show'),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(11),

      child: Center(
        child: DropdownButton<ItemDrop>(
          hint: Text("Selecione o tipo do Evento"),
          value: selectedUser,

          onChanged: (ItemDrop Value) {
            setState(() {
              selectedUser = Value;
            });
          },
          items: users.map((ItemDrop user) {
            return DropdownMenuItem<ItemDrop>(
              value: user,
              child: Container(
                child: Text(
                  user.name,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
