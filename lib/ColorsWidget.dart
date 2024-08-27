import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_v_0/Item.dart';
class Colorswidget extends StatefulWidget {
  const Colorswidget({super.key});

  @override
  State<Colorswidget> createState() => _ColorswidgetState();
}
class _ColorswidgetState extends State<Colorswidget> {
  double _opacity = 0.0;
  final AudioPlayer _audioPlayer = AudioPlayer(); // كائن AudioPlayer مشترك
  @override
  void initState() {
    super.initState();
    // تغيير قيمة الـ opacity بعد تأخير
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }
  @override
  void dispose() {
    _audioPlayer.dispose(); // تأكد من إلغاء تخصيص مشغل الصوت عند التخلص من الويدجت
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff23232C),
    appBar: AppBar(
    leading: IconButton(onPressed: (){
    Navigator.pop(context);
    }, icon: const Icon(Icons.arrow_back,
    color: Colors.white,)),
    title: const Text("Colors",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontFamily: 'RadioCanadaBig',
    ),),
    backgroundColor: Colors.black.withOpacity(1),
    elevation: 500,
    ),
    body: Container(
    decoration: const BoxDecoration(image: DecorationImage(
    image: AssetImage('assets/images/familyBack.jpg'),
    fit: BoxFit.cover
    ),
    ),
    child: ListView(
    padding: const EdgeInsets.only(top: 20, right: 8, left: 8),
    children: [
      buildAnimatedContainerColor(
        entext: "Black",
        jptext: "黒",
        soundPath:'Color_sound/black.wav' ,
        color: Colors.black,
        opacity: _opacity,
        audioPlayer: _audioPlayer
      ),
      const SizedBox(height: 15),
      buildAnimatedContainerColor(
          entext: "Brown",
          jptext: "茶色",
          soundPath:'Color_sound/brown.wav' ,
          color: Colors.brown,
          opacity: _opacity,
          audioPlayer: _audioPlayer
      ),
      const SizedBox(height: 15),
      buildAnimatedContainerColor(
          entext: "Gray",
          jptext: "グレー",
          soundPath:'Color_sound/gray.wav' ,
          color: Colors.grey,
          opacity: _opacity,
          audioPlayer: _audioPlayer
      ),
      const SizedBox(height: 15),
      buildAnimatedContainerColor(
          entext: "Green",
          jptext: "緑",
          soundPath:'Color_sound/green.wav' ,
          color: Colors.green,
          opacity: _opacity,
          audioPlayer: _audioPlayer
      ),
      const SizedBox(height: 15),
      buildAnimatedContainerColor(
          entext: "Red",
          jptext: "赤",
          soundPath:'Color_sound/red.wav' ,
          color: Colors.red,
          opacity: _opacity,
          audioPlayer: _audioPlayer
      ),
      const SizedBox(height: 15),
      buildAnimatedContainerColor(
          entext: "White",
          jptext: "白",
          soundPath:'Color_sound/white.wav' ,
          color: Colors.white,
          opacity: _opacity,
          audioPlayer: _audioPlayer
      ),
      const SizedBox(height: 15),
      buildAnimatedContainerColor(
          entext: "Yellow",
          jptext: "黄色",
          soundPath:'Color_sound/yellow.wav' ,
          color: Colors.yellow,
          opacity: _opacity,
          audioPlayer: _audioPlayer
      ),
      const SizedBox(height: 15),
      buildAnimatedContainerColor(
          entext: "Dusty Yellow",
          jptext: "黄色",
          soundPath:'Color_sound/dusty yellow.wav' ,
          color: Colors.yellowAccent,
          opacity: _opacity,
          audioPlayer: _audioPlayer
      ),
    ]
    )
    )
    );
  }
}
