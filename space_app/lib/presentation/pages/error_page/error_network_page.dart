import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorNetworkPage extends StatefulWidget {
  const ErrorNetworkPage({Key? key}) : super(key: key);

  @override
  State<ErrorNetworkPage> createState() => _ErrorNetworkPageState();
}

class _ErrorNetworkPageState extends State<ErrorNetworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background/background25.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 140),
            Image.asset(
              'assets/astronauta/celular.png',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
              child: Row(
                children:  [
                  Icon(Icons.warning_rounded,
                      color: Colors.deepPurpleAccent, size: 40),
                  Text(
                    ' Opa...',
                    style: GoogleFonts.montserrat(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
              child: Row(
                children:  [
                  Text(
                    'Problema na conexão',
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
              child: Wrap(
                children:  [
                  Text(
                    'Por favor, verifique sua conexão com a internet e tente outra vez',
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SizedBox(
                height: 75,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  child: Center(
                    child: Text(
                      ' FECHAR ',
                      style: GoogleFonts.montserrat(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
