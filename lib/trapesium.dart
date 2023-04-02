import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  double atas = 0;
  double bawah = 0;
  double tinggi = 0;
  double miring = 0;
  String _apa = '';

  double _hasil = 0;

  void keliling() {
    setState(() {
      _hasil = (miring * 2) + atas + bawah;
      _apa = 'keliling';
    });
  }

  void luas() {
    setState(() {
      _hasil = 0.5 * (atas + bawah) * tinggi;
      _apa = 'Luas';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Trapesium"),
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
                      'Assets/image/trapesium.png',
                    ),
                    width: 130,
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                Row(
                  children: <Widget>[
                    Form('Input Sisi Atas', atas,
                        (value) => setState(() => atas = value)),
                    SizedBox(width: 10),
                    Form('Input Sisi Bawah', bawah,
                        (value) => setState(() => bawah = value)),
                  ],
                ),
                Padding(
                  padding: new EdgeInsets.only(top: 30),
                ),
                Row(
                  children: <Widget>[
                    Form('Input Tinggi', tinggi,
                        (value) => setState(() => tinggi = value)),
                    SizedBox(width: 10),
                    Form('Input Sisi Miring', miring,
                        (value) => setState(() => miring = value)),
                  ],
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
                          onPressed: luas,
                          child: Text(
                            'Luas',
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
                          onPressed: keliling,
                          child: Text(
                            'Keliling',
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
