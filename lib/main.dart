import 'package:openid_client/openid_client.dart';
import 'package:flutter_application/login.dart';
import 'package:flutter_application/helpers/palette.dart';
import 'package:flutter/material.dart';

void main() async {
  TestOpenId();
  runApp(const MyApp());
}

void TestOpenId() async {
  // print a list of known issuers
  print(Issuer.knownIssuers);

  // discover the metadata of the google OP
  var issuer = await Issuer.discover(Issuer.microsoft);

  print(issuer);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Palette.yokogawa_theme,
        ),
        home: const LoginPage()
        //home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
