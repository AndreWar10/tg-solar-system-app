import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/presentation/pages/exoplanet_page/exoplanet_page.dart';


class ExoplanetTypePage extends StatelessWidget {
  const ExoplanetTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exoplanetas'), centerTitle: true),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/background100.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const  [
              botaof(
                text: 'habitaveis',
                rota: '/sistemasolar', habitable: false, noHabitable: true,
              ),
              SizedBox(
                height: 20,
              ),
              botaof(
                text: 'não habitaveis',
                rota: '/news',habitable: true, noHabitable: false,
              ),
              SizedBox(
                height: 20,
              ),
              botaof(
                text: 'todos',
                rota: '/exoplanets',habitable: true, noHabitable: true,
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class botaof extends StatefulWidget {
  const botaof({Key? key, required this.text, required this.rota, required this.habitable, required this.noHabitable}) : super(key: key);

   final String text;
  final String rota;
  final bool habitable;
  final bool noHabitable;

  @override
  State<botaof> createState() => _botaofState();
}



// ignore: camel_case_types
class _botaofState extends State<botaof> {

  
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

             Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ExoplanetPage(viewHabitable: widget.habitable, viewNoHabitable: widget.noHabitable,),
        ),
      );
        },
        // icon: FaIcon(
        //   FontAwesomeIcons.google,
        //   color: Colors.deepPurple,
        // ),
        label: Text(
          widget.text,
          style: GoogleFonts.montserrat(
            fontSize: 13,
          ),
        ),
        icon: Icon(Icons.ac_unit_rounded),
      ),
    );
    
  }
}
