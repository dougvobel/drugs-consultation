import 'package:drugs_consultation/pages/detail_page.dart';
import 'package:drugs_consultation/presentation/drugs_consultation_icons.dart';
import 'package:drugs_consultation/utils/nav.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int _option = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pontos de distribuição'),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Column(
      children: <Widget>[
        Container(
          height: 35,
          width: double.infinity,
          color: Colors.black26,
          child: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () {
                _askedToLead(context);
              },
              child: Container(
                width: 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Ordem alfabética',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Container(
                      child: Icon(Icons.keyboard_arrow_down),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 5, right: 5, top: 10),
          child: _searchParametersCard('Dipirona sódica 500ml.'),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.only(left: 5, right: 5),
            children: <Widget>[
              _distributorCard(
                context,
                'Drogaria Santa Marta Av. D',
                'Avenida Pio XII - Cidade Jardim, Goiânia, CEP 74482-150',
                2.45,
              ),
              _distributorCard(
                context,
                'Drogaria Santa Marta Av. D',
                'Avenida Pio XII - Cidade Jardim, Goiânia, CEP 74482-150',
                2.45,
              ),
              _distributorCard(
                context,
                'Drogaria Santa Marta Av. D',
                'Avenida Pio XII - Cidade Jardim, Goiânia, CEP 74482-150',
                2.45,
              ),
              _distributorCard(
                context,
                'Drogaria Santa Marta Av. D',
                'Avenida Pio XII - Cidade Jardim, Goiânia, CEP 74482-150',
                2.45,
              ),
              _distributorCard(
                context,
                'Drogaria Santa Marta Av. D',
                'Avenida Pio XII - Cidade Jardim, Goiânia, CEP 74482-150',
                2.45,
              ),
              _distributorCard(
                context,
                'Drogaria Santa Marta Av. D',
                'Avenida Pio XII - Cidade Jardim, Goiânia, CEP 74482-150',
                2.45,
              ),
              _distributorCard(
                context,
                'Drogaria Santa Marta Av. D',
                'Avenida Pio XII - Cidade Jardim, Goiânia, CEP 74482-150',
                2.45,
              ),
            ],
          ),
        )
      ],
    );
  }

  _distributorCard(context, String name, String address, double mileage) {
    return Container(
      margin: EdgeInsets.all(4),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
            color: Colors.grey,
            offset: new Offset(1, 1),
          )
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    address,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'Mais informações',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      push(context, DetailPage());
                    },
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$mileage km',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Icon(
                      Icons.directions,
                      size: 55,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _searchParametersCard(String drugName) {
    return Card(
      color: Colors.blue,
      child: ListTile(
        leading: Icon(
          DrugsConsultation.pill,
          color: Colors.white,
          size: 36,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Exibindo resultados para:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            )
          ],
        ),
        subtitle: Text(
          drugName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }

  _askedToLead(context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Escolha o filtro'),
          shape: UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          content: Container(
            height: 120,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Ordem alfabética'),
                  leading: Radio(
                    value: 1,
                    groupValue: _option,
                    onChanged: (value) {
                      setState(() {
                        _option = value;
                      });

                      Navigator.pop(context);
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Mais próximo da minha localização'),
                  leading: Radio(
                    value: 2,
                    groupValue: _option,
                    onChanged: (value) {
                      setState(() {
                        _option = value;
                      });

                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: Text(
                'Voltar',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
