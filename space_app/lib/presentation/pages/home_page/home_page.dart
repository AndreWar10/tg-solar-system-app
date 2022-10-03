import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Tela inicial',
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold)),
          centerTitle: true),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/background100.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 35,right: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Image.asset(
                  "assets/astronauta/astronauta-home.png",
                  width: 190,
                  height: 190,
                ),
                SizedBox(height: 15),

                Row(
                  children: [
                    Text(
                      'Olá André',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('por onde vamos começar?',style: GoogleFonts.montserrat(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                  ],
                ),
                                SizedBox(height: 40),

                botao(
                  text: 'sistema solar',
                  rota: '/sistemasolar', imagem: 'assets/icons/sistemasolar.png',
                ),
                SizedBox(
                  height: 20,
                ),
                botao(
                  text: 'notícias',
                  rota: '/news', imagem: 'assets/icons/noticias.png',
                ),
                // SizedBox(
                //   height: 20,
                // ),
                // botao(
                //   text: 'exoplanetas',
                //   rota: '/exoplanets',
                // ),
                SizedBox(
                  height: 20,
                ),
                botao(
                  text: 'lançamentos',
                  rota: '/spacex', imagem: 'assets/icons/lancamentos.png',
                ),
                SizedBox(
                  height: 20,
                ),
                botao(
                  text: 'obervatórios',
                  rota: '/observatorios', imagem: 'assets/icons/observatorios.png',
                ),
              ],
            ),
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
    required this.rota, required this.imagem,
  }) : super(key: key);

  final String text;
  final String rota;
  final String imagem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(rota),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(6)),
        height: 55,
        //width: MediaQuery.of(context).size.width * 0.9,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 86),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(imagem)),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    text,
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
