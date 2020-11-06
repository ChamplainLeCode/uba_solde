import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UbaSolde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String solde = (ModalRoute.of(context).settings.arguments as Map)[#solde];
    return CupertinoPageScaffold(
        child: SingleChildScrollView(
            child: Container(
                height: 430,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Center(
                        child: Text(
                      'N° de Compte',
                      style: TextStyle(
                          color: Color(0xFFE32F3A),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
                    SizedBox(height: 10),
                    Text(
                      '10005-00001-06401661101-40',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF090909),
                      ),
                    ),
                    SizedBox(height: 11),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 20),
                            child: Text(
                              'Type de compte',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF090909),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 100,
                            child: Text(
                              'COMPTES EPARGNE SUR LIVRET',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xFF090909),
                              ),
                            ))
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0x80090909),
                    ),
                    SizedBox(height: 14),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Solde disponible',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF090909),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 100,
                            child: Text(
                              solde,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xFF090909),
                              ),
                            ))
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0x80090909),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 14),
                            child: Text(
                              'Intitulé',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF090909),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 100,
                            child: Text(
                              'DIKAM SUZANNE CHARLENNE',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xFF090909),
                              ),
                            ))
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0x80090909),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              'Devise',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF090909),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 100,
                            child: Text(
                              'XAF',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xFF090909),
                              ),
                            ))
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0x80090909),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 2),
                            child: Text(
                              'Date d\'ouverture',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF090909),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 100,
                            child: Text(
                              '2020/1/20',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xFF090909),
                              ),
                            ))
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0x80090909),
                    ),
                    SizedBox(height: 15),
                    Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(children: [
                          Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xFF0205BF),
                                          width: 0.8))),
                              child: Text(
                                'Historique de compte',
                                style: TextStyle(
                                    color: Color(0xFF0205BF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          Icon(Icons.date_range,
                              color: Color(0xFFE32F3A), size: 18)
                        ])),
                    SizedBox(height: 15),
                    Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(children: [
                          Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xFF0205BF),
                                          width: 0.8))),
                              child: Text(
                                'Les 10 dernières transactions',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF0205BF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ))
                        ])),
                    SizedBox(
                      height: 70,
                    )
                  ],
                ))),
        navigationBar: CupertinoNavigationBar(
          previousPageTitle: 'Back',
          actionsForegroundColor: Colors.white,
          middle: Text(
            'Informations sur le compte',
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.home,
            color: Colors.white,
            size: 24,
          ),
        )
        //UbaAppBar());
        );
  }
}

class UbaAppBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFFE32F3A),
        height: preferredSize.height + MediaQuery.of(context).padding.top,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CupertinoNavigationBarBackButton(
                  previousPageTitle: 'Back', color: Colors.white),
              Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text('Informations sur le compte',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFCE8E5),
                      ))),
              Container(
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 18,
                  ),
                  margin: EdgeInsets.only(right: 15))
            ]));
  }

  @override
  Size get preferredSize => Size.fromHeight(40);

  @override
  bool shouldFullyObstruct(BuildContext context) => true;
}
