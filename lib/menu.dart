import 'package:flutter/material.dart';
import 'package:utsmobile/Profile.dart';
import 'package:utsmobile/login.dart';
import 'package:utsmobile/tabung.dart';
import 'package:utsmobile/bangun%20datar.dart';
import 'kalender.dart';


class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            title: Text("Dashboard"),
            centerTitle: true,
            actions: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPageState()
                      )
                  );
                  SnackBar snackBar = const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text(
                      'Anda Berhasil Logout',
                    ),
                    backgroundColor:  Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child:  Icon(Icons.logout_outlined,
                size: 38,) ,
              ),
              SizedBox(width: 20,)

            ],

          ),
          body: ListView(
            children: [
              SizedBox(height: 30,),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Kartu(context, 'Profile', 'Assets/image/profile.png',Profile()),
                              Kartu(context, 'Bangun Ruang', 'Assets/image/geometric.png', BangunRuang()),
                              Kartu(context, 'Kalender', 'Assets/image/kalender.png',LiveCalendarMenu()),

                            ],
                          ),
                        ),
                      ],
                    )
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


