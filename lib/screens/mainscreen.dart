import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //gettting whta the user types
  final _textController = TextEditingController();
  //storing the user info
  String userData = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //lets display what the user types
            Expanded(
              child: Center(
                child: Text(
                  userData,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            //displaying text input
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Add new item..',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    //clearing whats currently typed
                    _textController.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //material button
            MaterialButton(
              onPressed: () {
                //when pressed the info is displayed
                setState(() {
                  userData = _textController.text;
                });
              },
              color: Colors.blue,
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
