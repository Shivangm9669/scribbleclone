import 'package:flutter/material.dart';
import 'package:scribbleclone/widgets/custom_text_field.dart';
import 'package:scribbleclone/widgets/menu_button.dart';
import 'package:scribbleclone/widgets/scribbl_appBar.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roomnameController = TextEditingController();
  String? _maxRoundvalue;
  String? _maxPlayer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScribllBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Create Room",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          CustomTextField(
              hinttext: "Enter Your Name", controller: _nameController),
          const SizedBox(height: 20),
          CustomTextField(
              hinttext: "Enter Room Name", controller: _roomnameController),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              DropdownButton<String>(
                value: _maxRoundvalue,
                items: <String>["2", "5", "10", "15"]
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                    .toList(),
                hint: const Text('Select Max Rounds',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                onChanged: (String? newvalue) {
                  setState(() {
                    _maxRoundvalue = newvalue;
                  });
                },
              ),
              const SizedBox(height: 20, width: 20),
              DropdownButton<String>(
                value: _maxPlayer,
                items: <String>["2", "3", "4", "5"]
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                    .toList(),
                hint: const Text(
                  'Select Max Players',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onChanged: (String? newvalue) {
                  setState(() {
                    _maxPlayer = newvalue;
                  });
                },
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          MainButton(buttontext: "Create", onpressed: () {})
        ],
      ),
    );
  }
}
