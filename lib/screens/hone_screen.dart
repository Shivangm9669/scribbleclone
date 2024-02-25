import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scribbleclone/screens/create_room_screen.dart';
import 'package:scribbleclone/screens/join_room_screen.dart';
import 'package:scribbleclone/widgets/menu_button.dart';
import 'package:scribbleclone/widgets/scribbl_appBar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScribllBar(),
      backgroundColor: Theme.of(context).canvasColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Create/Join a room to play",
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MainButton(
                    buttontext: "Create Room",
                    onpressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const CreateRoomScreen()))),
                MainButton(
                    buttontext: "Join Room",
                    onpressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const JoinScreenPage()))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
