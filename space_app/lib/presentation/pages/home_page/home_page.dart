import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela inicial',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold)),centerTitle: true),
      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/background100.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              botao(
                text: 'sistema solar',
                rota: '/sistemasolar',
              ),
              SizedBox(
                height: 20,
              ),
              botao(
                text: 'news',
                rota: '/news',
              ),
              SizedBox(
                height: 20,
              ),
              botao(
                text: 'exoplanetas',
                rota: '/exoplanets',
              ),
              SizedBox(
                height: 20,
              ),
               botao(
                text: 'spacex',
                rota: '/spacex',
              ),
              SizedBox(
                height: 20,
              ),
               botao(
                text: 'obervatórios',
                rota: '/observatorios',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class botao extends StatelessWidget {
  const botao({
    Key? key,
    required this.text,
    required this.rota,
  }) : super(key: key);

  final String text;
  final String rota;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          primary: Colors.white,
          onPrimary: Colors.black,
          minimumSize: Size(
            double.infinity,
            50,
          ),
        ),
        //Google login
        onPressed: () {
          // final provider = Provider.of<GoogleSignInProvider>(
          //     context,
          //     listen: false);
          // provider.googleLogin();
          Navigator.of(context).pushNamed(rota);
        },
        // icon: FaIcon(
        //   FontAwesomeIcons.google,
        //   color: Colors.deepPurple,
        // ),
        label: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontSize: 13,
              ),
            ),
          ],
        ),
        icon: Icon(Icons.ac_unit_rounded),
      ),
    );
  }
}
