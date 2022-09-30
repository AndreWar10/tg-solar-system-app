import 'package:flutter/material.dart';

class CustomLoadingPage extends StatelessWidget {
  const CustomLoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(strokeWidth: 5.0,),
      ),
    );
  }
}
