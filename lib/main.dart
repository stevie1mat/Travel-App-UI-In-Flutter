import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fb.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Column(
          children: [
            SizedBox(height: 40),
            Image.asset('assets/user.png'),
            SizedBox(height: 40),
            Center(
                child: Text(
              'Organize Your Travel',
              style: GoogleFonts.cinzel(
                  color: Colors.grey[800],
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                  child: Text(
                'Let us organize Your travelling with priority and do everything without stress',
                style: GoogleFonts.lato(
                    color: Colors.grey[600],
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              )),
            ),
            SizedBox(height: 100),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Facebook(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png',
                      height: 30),
                  SizedBox(width: 10),
                  Text(
                    'Continue With Facebook',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-google-icon-logo-png-transparent-svg-vector-bie-supply-14.png',
                    height: 30),
                SizedBox(width: 10),
                Text(
                  'Continue With Google',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => Github(),
              //     ),
              //   );
              // },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      'https://pngimg.com/uploads/github/github_PNG83.png',
                      height: 30),
                  SizedBox(width: 10),
                  Text(
                    'Continue With Github',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
