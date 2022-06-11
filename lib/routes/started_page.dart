import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_your_balance/helper/my_colors.dart';
import 'package:save_your_balance/routes/login_page.dart';
import 'package:save_your_balance/routes/main_page.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration:  BoxDecoration(color: MyColor.myBlack),
          child: Stack(
            fit: StackFit.expand,
            children: [
              FittedBox(
                fit: BoxFit.none,
                child: Image.asset(
                  'assets/images/background.png',
                  fit: BoxFit.fitHeight,
                ),
                clipBehavior: Clip.hardEdge,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 10),
                    child: Text(
                      'superbank'.toUpperCase(),
                      style: GoogleFonts.frankRuhlLibre(
                        textStyle: const TextStyle(
                          letterSpacing: 7,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Save your \n balance',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.questrial(
                          color: Colors.white,
                          fontSize: 40,
                          height: 1.3,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/images/logo.png',
                      scale: 1.4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                        'Best solution to save your\nbalance & transactions',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.3,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor: MyColor.myGrey,
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor: MyColor.myGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(220, 50),
                      primary: const Color(0xfff0b18e), // background
                      onPrimary: Colors.black, // foreground
                    ),
                    onPressed: () {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const MainPage();
                        }),
                      );*/
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const LoginPage();
                        }),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


