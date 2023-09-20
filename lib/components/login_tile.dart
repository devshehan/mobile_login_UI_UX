import 'package:flutter/material.dart';

class LoginTile extends StatelessWidget {
  final String imagePath;

  const LoginTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(imagePath,height: 150,),
    );
  }
}
