import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ponto de distribuição'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              print('Oi');
            },
          ),
        ],
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5, top: 10),
      child: ListView(
        children: <Widget>[
          Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                Image.network(
                  'https://maps.googleapis.com/maps/api/staticmap?center=74915400&zoom=17&size=500x200&key=AIzaSyAx-U1f-779SVmQFdfk62ThGIUfKVkkkYM',
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.directions,
                    size: 55,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Drogaria Santa Marta Av. D',
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Avenida Pio XII - Cidade Jardim, Goiânia, CEP 74482-150',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Medicamento procurado:',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Dipirona sódica 500 ml',
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'O que você precisará levar:',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                  'sed do eiusmod tempor incididunt ut labore et dolore'
                  'magna aliqua. Ut enim ad minim veniam, quis nostrud'
                  'exercitation ullamco laboris nisi ut aliquip ex ea commodo'
                  'consequat.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
