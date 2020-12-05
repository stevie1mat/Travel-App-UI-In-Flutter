import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'book.dart';

class Facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/1098365/pexels-photo-1098365.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios,
                                color: Colors.black, size: 19),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Center(
                            child: Material(
                              // with Material
                              child: Image.network(
                                  'https://lh3.googleusercontent.com/proxy/ATx5JJM5o6edYAx8D_cICXBigL1n83KkMYTVAUvrUIz0i5VlqzjKkB5gBeWkAWP_yjr0TASAYfiVq5wi2WykGePdtw6-9UshQHGjWNq-xQ4DF5N3xGjaG3IUVRxeuqlI2QtP00hz0hid66SWBw',
                                  height: 40),

                              elevation: 18.0,
                              shape: CircleBorder(),
                              clipBehavior: Clip.antiAlias,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Welcome, Dave Smith',
                      style: GoogleFonts.cinzel(
                          color: Colors.grey[700],
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Book Your Tickets To Your Unique Location\nWith Excellent Hotels & Services',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 13,
                          letterSpacing: 0.9,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 510,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookNow(),
                            ),
                          );
                        },
                        color: Colors.transparent,
                        textColor: Colors.white,
                        child: Text(
                          "Book NOw".toUpperCase(),
                          style: GoogleFonts.cinzel(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
