import 'package:flutter/material.dart';

class WelcomeButtonWidget extends StatelessWidget {
  const WelcomeButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            primary: Color.fromARGB(255, 255, 255, 255),
            onPrimary: Colors.black,
            minimumSize: Size(
              double.infinity,
              50,
            ),
          ),
          onPressed: () => Navigator.of(context).pushReplacementNamed("/login"),
          child: Text(
            'Iniciar Jornada',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          ),
        ),
      ),
    );
  }
}
