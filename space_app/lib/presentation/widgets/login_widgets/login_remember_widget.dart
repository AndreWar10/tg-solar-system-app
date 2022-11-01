import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../pages/forgotpassword/forgotpassword.dart';

class ForgotPassWidget extends StatelessWidget {
  const ForgotPassWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 12, right: 20),
        child: RichText(
          text: TextSpan(
            text: 'Esqueceu a senha?',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPassword(),
                  ),
                );
              },
          ),
        ),
      ),
    );
  }
}
