import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {super.key, required this.buttontext, required this.onpressed()});
  final String buttontext;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: const ButtonStyle(
        elevation: MaterialStatePropertyAll(5),
      ),
      child: Text(
        buttontext,
        style: GoogleFonts.aboreto(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
