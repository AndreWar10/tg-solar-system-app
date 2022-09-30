import 'package:flutter/material.dart';

class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              // //botão de logout
            },
            icon: Icon(
              Icons.logout,
              color: Color.fromARGB(255, 218, 218, 218),
              size: 40,
            )),
      ],
    );
  }
}