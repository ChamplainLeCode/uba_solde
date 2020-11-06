import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uba_solde/UbaSolde.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'UBA Solde',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
          barBackgroundColor: Color(0xFFE32F3A),
          primaryColor: Color(0xFFE32F3A),
          scaffoldBackgroundColor: Color(0xFFE9EAEF),
          textTheme: CupertinoTextThemeData(
              primaryColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ))
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          ),
      home: UbaHome(
        title: 'Uba Solde',
      ),
    );
  }
}

class UbaHome extends StatefulWidget {
  UbaHome({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<UbaHome> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SingleChildScrollView(
            child: Center(
                child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 100, left: 40, right: 40),
          child: CupertinoTextField(
            controller: controller,
            //keyboardType: TextInputType.number,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.primaries[0]),
            prefix: Text(' XAF',
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.primaries[0])),
          ),
        ),
        RaisedButton(
            child: Text('Valider'),
            onPressed: () => Navigator.of(context).push(CupertinoPageRoute(
                builder: (ctx) => UbaSolde(),
                settings: RouteSettings(
                    name: 'solde', arguments: {#solde: controller.text}))))
//                .push('/solde', arguments: {#solde: controller.text}))
      ],
    ))));
  }
}
