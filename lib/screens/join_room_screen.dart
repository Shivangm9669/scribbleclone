import "package:flutter/material.dart";
import "package:scribbleclone/widgets/custom_text_field.dart";
import "package:scribbleclone/widgets/menu_button.dart";
import "package:scribbleclone/widgets/scribbl_appbar.dart";

class JoinScreenPage extends StatefulWidget {
  const JoinScreenPage({super.key});

  @override
  State<JoinScreenPage> createState() => _JoinScreenPageState();
}

class _JoinScreenPageState extends State<JoinScreenPage> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _roomcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScribllBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Join Room",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: CustomTextField(
                hinttext: "Enter Room Name ", controller: _namecontroller),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: CustomTextField(
                hinttext: "Enter Your Name", controller: _roomcontroller),
          ),
          const SizedBox(
            height: 20,
          ),
          MainButton(buttontext: "Join", onpressed: () {}),
        ],
      ),
    );
  }
}
