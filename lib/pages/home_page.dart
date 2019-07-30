import 'package:drugs_consultation/pages/result_page.dart';
import 'package:drugs_consultation/presentation/drugs_consultation_icons.dart';
import 'package:drugs_consultation/utils/nav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[
      _consultBody(context),
      _favoritesBody(),
      _historyBody(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Consulta medicamentos'),
        centerTitle: true,
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      backgroundColor: Colors.blue,
      selectedLabelStyle: TextStyle(color: Colors.white),
      onTap: _onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            DrugsConsultation.pill,
            color: Colors.black45,
          ),
          activeIcon: Icon(
            DrugsConsultation.pill,
            color: Colors.white,
          ),
          title: Text(
            'Medicamentos',
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black45,
          ),
          activeIcon: Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          title: Text(
            'Favoritos',
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.history,
            color: Colors.black45,
          ),
          activeIcon: Icon(
            Icons.history,
            color: Colors.white,
          ),
          title: Text(
            'Histórico',
          ),
        ),
      ],
      selectedItemColor: Colors.white,
    );
  }

  _consultBody(context) {
    return ListView(
      padding: EdgeInsets.only(left: 20, right: 20, top: 25),
      children: <Widget>[
        Container(
          color: Colors.grey,
          height: 200,
        ),
        SizedBox(
          height: 25,
        ),
        TextFormField(
          scrollPadding: EdgeInsets.all(200),
          decoration: InputDecoration(
            labelText: 'Medicamentos ou grupo terapêutico',
            labelStyle: TextStyle(
              fontSize: 20,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            push(context, ResultPage());
          },
          color: Colors.blue,
          padding: EdgeInsets.all(10),
          child: Text(
            'Pesquisar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }

  _favoritesBody() {
    return ListView(
      padding: EdgeInsets.only(left: 20, right: 20, top: 25),
      children: <Widget>[
        _favoriteCard('Dipirona sódica 200ml',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        _favoriteCard('Dipirona sódica 200ml',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        _favoriteCard('Dipirona sódica 200ml',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        _favoriteCard('Dipirona sódica 200ml',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        _favoriteCard('Dipirona sódica 200ml',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        _favoriteCard('Dipirona sódica 200ml',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
        _favoriteCard('Dipirona sódica 200ml',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
      ],
    );
  }

  _favoriteCard(String title, String subtitle) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              DrugsConsultation.pill,
              size: 40,
              color: Colors.black,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.favorite,
                )
              ],
            ),
            subtitle: Text(subtitle),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('REMOVER'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                FlatButton(
                  child: const Text('PESQUISAR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _historyBody() {
    return ListView(
      padding: EdgeInsets.only(left: 20, right: 20, top: 25),
      children: <Widget>[
        _historyCard('Dipirona sódica 200ml',
            'Pesquisado em 29 de julho de 2019 às 23:01.'),
        _historyCard('Dipirona sódica 200ml',
            'Pesquisado em 29 de julho de 2019 às 23:01.'),
        _historyCard('Dipirona sódica 200ml',
            'Pesquisado em 29 de julho de 2019 às 23:01.'),
        _historyCard('Dipirona sódica 200ml',
            'Pesquisado em 29 de julho de 2019 às 23:01.'),
        _historyCard('Dipirona sódica 200ml',
            'Pesquisado em 29 de julho de 2019 às 23:01.'),
        _historyCard('Dipirona sódica 200ml',
            'Pesquisado em 29 de julho de 2019 às 23:01.'),
        _historyCard('Dipirona sódica 200ml',
            'Pesquisado em 29 de julho de 2019 às 23:01.'),
      ],
    );
  }

  _historyCard(title, subtitle) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              DrugsConsultation.pill,
              size: 40,
              color: Colors.black,
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(subtitle),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('PESQUISAR'),
                  onPressed: () {
                    /* ... */
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
