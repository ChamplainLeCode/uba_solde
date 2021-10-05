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
                      (ModalRoute.of(context).settings.arguments
                                  as Map)[#lang] ==
                              #en
                          ? 'Account Number'
                          : 'N° de Compte',
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
                              (ModalRoute.of(context).settings.arguments
                                          as Map)[#lang] ==
                                      #en
                                  ? 'Account Type'
                                  : 'Type de compte',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xFF090909),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 120,
                            child: Text(
                              'COMPTES EPARGNE SUR LIVRET',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
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
                              (ModalRoute.of(context).settings.arguments
                                          as Map)[#lang] ==
                                      #en
                                  ? 'Available Balance'
                                  : 'Solde disponible',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xFF090909),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 120,
                            child: Text(
                              solde,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
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
                              (ModalRoute.of(context).settings.arguments
                                          as Map)[#lang] ==
                                      #en
                                  ? 'Account Name'
                                  : 'Intitulé',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xFF090909),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 120,
                            margin: EdgeInsets.only(bottom: 6),
                            padding: EdgeInsets.only(right: 3),
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
                              (ModalRoute.of(context).settings.arguments
                                          as Map)[#lang] ==
                                      #en
                                  ? 'Currency'
                                  : 'Devise',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF090909),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 120,
                            child: Text(
                              'XAF',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
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
                              (ModalRoute.of(context).settings.arguments
                                          as Map)[#lang] ==
                                      #en
                                  ? 'Opening Date'
                                  : 'Date d\'ouverture',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xFF090909),
                              ),
                            )),
                        Expanded(child: Container()),
                        Container(
                            width: 120,
                            child: Text(
                              '2020/1/20',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
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
                                (ModalRoute.of(context).settings.arguments
                                            as Map)[#lang] ==
                                        #en
                                    ? 'Transaction History'
                                    : 'Historique de compte',
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
                                (ModalRoute.of(context).settings.arguments
                                            as Map)[#lang] ==
                                        #en
                                    ? 'Last 10 Transactions'
                                    : 'Les 10 dernières transactions',
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
          previousPageTitle:
              (ModalRoute.of(context).settings.arguments as Map)[#lang] == #en
                  ? 'Back'
                  : 'Retour',

          // actionsForegroundColor: Colors.white,
          middle: Text(
            (ModalRoute.of(context).settings.arguments as Map)[#lang] == #en
                ? 'Account Details'
                : 'Informations sur le compte',
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
    print(ModalRoute.of(context).settings.arguments);
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
                  child: Text(
                      (ModalRoute.of(context).settings.arguments
                                  as Map)[#lang] ==
                              #en
                          ? 'Account Details'
                          : 'Informations sur le compte',
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
