import 'package:flutter/material.dart';

class Layang extends StatefulWidget {
  const Layang({Key? key}) : super(key: key);

  @override
  State<Layang> createState() => _LayangState();
}

class _LayangState extends State<Layang> {
  double r = 0;
  double t = 0;
  double _hasil = 0;
  String _apa = '';

  void Volume() {
    setState(() {
      _hasil = (3.14 * r * r * t);
      _apa = 'Volume';
    });
  }

  void luasPermukaan() {
    setState(() {
      _hasil = 2 * 3.14 * r * (r + t);
      _apa = 'Luas';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Tabung"),
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20),
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                Center(
                  child: Container(
                    child: Image.asset(
                      'Assets/image/tabung.png',
                    ),
                    width: 130,
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                Row(
                  children: <Widget>[
                    Form('Input Jari-Jari', r,
                        (value) => setState(() => r = value)),
                    SizedBox(width: 10),
                    Form('Input tinggi', t,
                        (value) => setState(() => t = value)),
                  ],
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 30),
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 20),
                        child: ElevatedButton(
                          onPressed: Volume,
                          child: Text(
                            'Volume',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 20),
                        child: ElevatedButton(
                          onPressed: luasPermukaan,
                          child: Text(
                            'Luas',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 30),
                ),
                Center(
                  child: Container(
                    height: 200,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.lightBlueAccent,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 12),
                          Text(
                            'Hasil $_apa',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            '$_hasil',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget Form(String label, double variable, Function(double) updateVariable) {
    return Expanded(
        child: TextField(
      onChanged: (txt) {
        double value = double.tryParse(txt) ?? 0;
        updateVariable(value);
      },
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
      ),
      decoration: InputDecoration(
        labelText: label,
        border:
            new OutlineInputBorder(borderRadius: new BorderRadius.circular(10)),
      ),
    ));
  }
}
