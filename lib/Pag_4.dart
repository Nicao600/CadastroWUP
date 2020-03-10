import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Pag_4 extends StatefulWidget {
  @override
  _Pag_4State createState() => _Pag_4State();
}

class _Pag_4State extends State<Pag_4> {
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
          _Avatar(),
          _Bottom(),
        ],
      ),
    );
  }
}

class _Avatar extends StatefulWidget {
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<_Avatar> {
  File _image;

  @override
  Widget build(BuildContext context) {
    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
        print('Image Path $_image');
      });
    }

    Future uploadPic(BuildContext context) async {}
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Color(0xff476cfb),
                  child: ClipOval(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: (_image != null)
                          ? Image.file(
                              _image,
                              fit: BoxFit.fill,
                            )
                          : Image.network(
                              "",
                              fit: BoxFit.fill,
                            ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: IconButton(
                  icon: Icon(
                    Icons.add_a_photo,
                    size: 30,
                  ),
                  onPressed: () {
                    getImage();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        SizedBox(
          height: 20,
        ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
                child: Text('Concluir'), color: Colors.blue, onPressed: () {}),
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
      ]),
    );
  }
}
