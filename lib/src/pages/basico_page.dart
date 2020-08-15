import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: <Widget>[
        _createImage(),
        _createTitle(),
        _createActions(),
        _createText(),
        _createText(),
        _createText(),
        _createText(),
      ]),
    ));
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
          'https://lh3.googleusercontent.com/-H6PacdskbPehw_P3NQvLvIix3PK3gNC82AZXhpFhYm5PVY26CqyHieUp_jifhmYY-FrcezAVQ=w640-h400-e365',
        ),
        height: 210.0,
        fit: BoxFit.cover
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lake',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'This is a place in Canada',
                    style: estiloSubtitulo,
                  )
                ]),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 30.0,
          ),
          Text(
            '41',
            style: TextStyle(fontSize: 20.0),
          )
        ]),
      ),
    );
  }

  Widget _createActions() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _action(Icons.call, "CALL"),
          _action(Icons.near_me, "ROUTE"),
          _action(Icons.share, "SHARE"),
        ]);
  }

  Widget _action(IconData icon, String texto) {
    return Column(children: <Widget>[
      Icon(
        icon,
        color: Colors.blue,
        size: 40.0,
      ),
      SizedBox(
        height: 5.0,
      ),
      Text(
        texto,
        style: TextStyle(fontSize: 15.0, color: Colors.blue),
      )
    ]);
  }

  Widget _createText() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Text(
          'Eiusmod aute aute velit do amet occaecat. Officia ullamco officia consequat Lorem non exercitation consectetur ea do. Duis consequat Lorem officia labore voluptate nisi consectetur. Nostrud cillum veniam sint anim aliqua enim elit.',
          textAlign: TextAlign.justify,
        ));
  }
}
