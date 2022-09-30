import 'package:flutter/material.dart';
import '../../pages/home_page/home_page.dart';
import '../../pages/login_page/login_page.dart';
import '../../pages/news_page/news_page.dart';
import '../../pages/register_page/register_page.dart';
import '../../bloc/solar_system_bloc/solar_system_bloc_imp.dart';
import '../../pages/splash_page/splash_page.dart';
import '../../pages/welcome_page/welcome_page.dart';

class RoutesWidget extends StatelessWidget {
  const RoutesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/news',
      routes: {
        //Animação inicial da aplicação
        '/splash': (_) => SplashPage(),
        //Tela de Login
        '/login': (_) => LoginPage(),
        //Tela de Cadastro
        '/register': (_) => RegisterPage(),
        //Tela de boas-vindas
        '/welcome': (_) => WelcomePage(),
        //Tela inicial, que contem os temas
        '/home': (_) => HomePage(),
        //Lista Sistema Solar
        '/sistemasolar': (_) => SolarSystemBlocImpl(),
        //Lista de Noticias
        '/news': (_) => NewsPage(),
      },
    );
  }
}
