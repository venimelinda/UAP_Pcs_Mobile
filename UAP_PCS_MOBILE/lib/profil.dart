import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.blue,
                Colors.lightBlue,
              ],
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context, '/'),
        ),
        title: Text('Profil'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: <BoxShadow>[
                  BoxShadow(color: Colors.grey.withOpacity(0.6), offset: const Offset(2.0, 4.0), blurRadius: 8),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(60.0)),
                child: Image.asset('assets/images/person.png'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
            child: Column(
              children: [
                Text(
                  'Veni Melinda',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Icon(Icons.person),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Nis',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                letterSpacing: 0.2,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '10112302',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                letterSpacing: 0.27,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Icon(Icons.person),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Nama Lengkap',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                letterSpacing: 0.2,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Veni Melinda',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                letterSpacing: 0.27,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Icon(Icons.location_city),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Alamat',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                letterSpacing: 0.2,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Seputih Raman,Lampung Tengah',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                letterSpacing: 0.27,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                RaisedButton(
                  padding: EdgeInsets.all(0),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.blue,
                          Colors.lightBlue,
                        ],
                      ),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                        minWidth: 150.0,
                        minHeight: 36.0,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Ubah Profil',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/profile_edit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
