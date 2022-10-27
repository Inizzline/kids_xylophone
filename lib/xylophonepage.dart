import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key? key}) : super(key: key);

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {

  Widget buildKeys(int soundNumber, Color color, Text text) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color)
        ),
        onPressed: () {
          playSound(soundNumber);
        }, child: text
      ),
    );
  }

  void playSound(int soundNumber,) async {
    final player = AudioCache();
    await player.play('note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 93, 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Kids Xylophone 👼', style: TextStyle(fontSize: 22),),
                SizedBox(height: 5,),
                Text('Inizzline v 1.0', style: TextStyle(fontSize: 10)),
              ],
            ),
          )
        ],
        backgroundColor: Colors.red,
        elevation: 2,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKeys(1, Colors.orange, Text('Orange', style: TextStyle(color: Colors.white, fontSize: 17),)),
          buildKeys(2, Colors.yellow, Text('Yellow', style: TextStyle(color: Colors.white, fontSize: 17),)),
          buildKeys(3, Colors.green, Text('Green', style: TextStyle(color: Colors.white, fontSize: 17),)),
          buildKeys(4, Colors.blue, Text('Blue', style: TextStyle(color: Colors.white, fontSize: 17),)),
          buildKeys(5, Colors.indigo, Text('Indigo', style: TextStyle(color: Colors.white, fontSize: 17),)),
          buildKeys(6, Colors.purpleAccent, Text('Violet', style: TextStyle(color: Colors.white, fontSize: 17),)),
          buildKeys(7, Colors.cyan, Text('Cyan', style: TextStyle(color: Colors.white, fontSize: 17),)),

        ],
      ),
    );
  }
}
