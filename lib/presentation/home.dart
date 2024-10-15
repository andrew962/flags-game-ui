import 'package:flags_game_ui/presentation/pages/new-game.page.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  newGame() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const NewGamePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        children: [
          const Text("Flag Game"),
          Center(
              child: ElevatedButton(
                  onPressed: () => newGame(), child: const Text("Juego Nuevo")))
        ],
      )),
    );
  }
}
