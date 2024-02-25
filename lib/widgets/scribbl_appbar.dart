import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:scribbleclone/utilties/colors.dart';

class ScribllBar extends StatelessWidget implements PreferredSizeWidget {
  const ScribllBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: indigo,
        title: Row(
          children: [
            const Icon(PhosphorIconsBold.markerCircle),
            Text("Scribbl",
                style: GoogleFonts.aboreto(fontWeight: FontWeight.bold)),
          ],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
