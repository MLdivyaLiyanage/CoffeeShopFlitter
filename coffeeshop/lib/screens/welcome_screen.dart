import 'package:coffeeshop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("Images/bg.png"),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coffee Shop",
              style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Text(
                  "Feeling Low? Take a Sip of Coffee",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 80),
                Material(
                  color: Color(0xFFE57734),
                  borderRadius: BorderRadius.circular(13),
                  child: InkWell(
                    // splashColor: Colors.black,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    child: Ink(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(),
                        child: Text(
                          "Get Start",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
