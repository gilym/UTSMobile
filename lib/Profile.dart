import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Profile'),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              width: 350,
              height: 400,
              child:  Card(
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    CircleAvatar(
                      radius: 65.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('Assets/image/fotoprofile.jpeg'),
                    ),
                    SizedBox(height: 25,),
                    Text('GILANG YOENAL MARINTA',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey
                    ),),
                    SizedBox(height: 20,),
                    Text('123200056',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey
                      ),),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context) => Detailprofile()));

                    },
                        child: Text('Detail'))
                  ],
                ),
              ),
            )
          )
      )
    );
  }
}

class Detailprofile extends StatelessWidget {
  const Detailprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Detail Profile'),
              centerTitle: true,
            ),
            body: Center(
                child: Container(
                  width: 350,
                  height: 500,
                  child:  Card(
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        CircleAvatar(
                          radius: 65.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('Assets/image/fotoprofile.jpeg'),
                        ),
                        SizedBox(height: 25,),
                        Text('GILANG YOENAL MARINTA ',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey
                          ),),
                        SizedBox(height: 25,),
                        Text('123200056',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey
                          ),),
                        SizedBox(height: 5,),
                        Text('Teknologi Pemrograman Mobile IF-A',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey
                          ),),
                        SizedBox(height: 5,),
                        Text('Biak , 15 Agustus 2002',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey
                          ),),
                        SizedBox(height: 30,),

                        Container(
                          width: 300,
                          alignment: Alignment.centerLeft,
                          child:Text('Semoga dalam sisa perkuliahaan di UPN ini dilancarkan semua kegiatannya , dilancarkan nanti selama mengambil skripsi dan lulus tepat waktu,AMIN',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey
                            ),

                          ),
                        ),
                        SizedBox(height: 30,),
                        Text('"Ora et labora"',
                          style: TextStyle(
                            fontStyle: FontStyle.italic
                              ,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey
                          ),
                        ),

                        SizedBox(height: 30,),

                      ],
                    ),
                  ),
                )
            )
        )
    );
  }
}

