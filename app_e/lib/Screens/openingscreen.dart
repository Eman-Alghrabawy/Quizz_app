import 'package:app_e/Screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, // the width of the device
        height: MediaQuery.of(context).size.height * 1, // hight of the device

        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://w0.peakpx.com/wallpaper/291/189/HD-wallpaper-2778x1284.jpg",
                ),
                fit: BoxFit.cover)),

        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),

            Image.asset(
              "images/My project.png",
              height: MediaQuery.of(context).size.height * 0.2,
            ),

            if (MediaQuery.of(context).orientation == Orientation.landscape)
              Image.asset(
                "Images/quizLogo.png",
                height: MediaQuery.of(context).size.height * 0.3,
              ),

            Text(
              "ITI Quiz App",
              style: GoogleFonts.pacifico(fontSize: 50, color: Colors.yellow),
            ),

            const SizedBox(
              height: 20,
            ),

            Text(
              "We are creative, enjoy our app",
              style:
                  GoogleFonts.dancingScript(fontSize: 30, color: Colors.white),
            ),

            // SizedBox(
            //   height: 100,
            // ),
            const Spacer(),

            // SizedBox(
            //   height: double.infinity,
            // ),

            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => LoginScreen(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.green,
                      ),
                    ),
                    child: const Text(
                      "Start",
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      ),
    );
  }
}
