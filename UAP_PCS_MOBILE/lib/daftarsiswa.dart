import 'package:flutter/material.dart';

class DaftarSiswa extends StatefulWidget {
  @override
  _DaftarSiswaState createState() => _DaftarSiswaState();
}

class _DaftarSiswaState extends State<DaftarSiswa> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              //color: Color(0xFFD4E7FE),
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF4DB6AC),
                    Color(0xFF4DB6AC),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.6,
                    0.3
                  ])),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 25,
                    height: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SELAMAT DATANG",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Di SMAN 1 Sumberejo",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Daftarkan putra putri anda.....",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 185,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: MediaQuery.of(context).size.height - 245,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                // TextField(),
                TextField(
                  decoration: new InputDecoration(
                    labelText: "No pendaftaran",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                TextField(
                  decoration: new InputDecoration(
                    labelText: "Nis",
                    icon: Icon(Icons.list),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                TextField(
                  decoration: new InputDecoration(
                    labelText: "Nama Lengkap",
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                TextField(
                  decoration: new InputDecoration(
                    labelText: "Jenis kelamin",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                TextField(
                  decoration: new InputDecoration(
                    labelText: "Alamat",
                    icon: Icon(Icons.home),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                TextField(
                  decoration: new InputDecoration(
                    labelText: "Jurusan",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),

                RaisedButton(
                    child: Text(
                      "Daftar",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {}),
              ],
            ),
          ),
        )
      ],
    );
  }
}
