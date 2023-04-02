import 'package:flutter/material.dart';
import 'package:utsmobile/tabung.dart';
import 'package:utsmobile/trapesium.dart';


class BangunRuang extends StatelessWidget {
  const BangunRuang({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
            appBar: AppBar(
              title: Text("Bangun Datar"),

            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Kartu(context, 'Tabung', 'Assets/image/tabung.png',Layang()),
                      Kartu(context, 'Trapesium', 'Assets/image/trapesium.png', Trapesium()),
                    ],
                  ),
                ),

              ],
            )
        )
    );
  }

  Widget Kartu(BuildContext context, String name, String img, Widget route) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(top: 60),
        height: 120,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.lightBlueAccent,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 2,
              blurRadius: 5,
              offset:
              Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:  <Widget>[
              Container(
                child: Image.asset(img),
                width: 65,
              ),
              SizedBox(height: 12),
              Text(
                name,
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
    );
  }
}
