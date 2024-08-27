import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_v_0/Item.dart';

class FamilyWidget extends StatefulWidget {
  const FamilyWidget({super.key});

  @override
  State<FamilyWidget> createState() => _FamilyWidgetState();
}

class _FamilyWidgetState extends State<FamilyWidget> {
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
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: const Text(
            "Family Member",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'RadioCanadaBig',
            ),
          ),
          backgroundColor: Colors.black.withOpacity(1),
          elevation: 500,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/familyBack.jpg'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            padding: const EdgeInsets.only(top: 20, right: 8, left: 8),
            children: [
              buildAnimatedContainer(
                entext: "Grandfather",
                jptext: "祖父",
                picPath: 'assets/images/grandfather.png',
                soundPath: 'Family_Sounds/grand father.wav',
                opacity: _opacity, // تمرير قيمة الـ opacity
                audioPlayer: _audioPlayer, // تمرير مشغل الصوت
              ),
              const SizedBox(height: 15),
              buildAnimatedContainer(
                entext: "Grandmother",
                jptext: "祖母",
                picPath: 'assets/images/grandmother.png',
                soundPath: 'Family_Sounds/grand mother.wav',
                opacity: _opacity,
                audioPlayer: _audioPlayer,
              ),
              const SizedBox(height: 15),
              buildAnimatedContainer(
                entext: "Father",
                jptext: "父親",
                picPath: 'assets/images/father.png',
                soundPath: 'Family_Sounds/father.wav',
                opacity: _opacity,
                audioPlayer: _audioPlayer,
              ),
              const SizedBox(height: 15),
              buildAnimatedContainer(
                entext: "Mom",
                jptext: "お母さん",
                picPath: 'assets/images/mom.png',
                soundPath: 'Family_Sounds/mother.wav',
                opacity: _opacity,
                audioPlayer: _audioPlayer,
              ),
              const SizedBox(height: 15),
              buildAnimatedContainer(
                entext: "Son",
                jptext: "息子",
                picPath: 'assets/images/son.png',
                soundPath: 'Family_Sounds/son.wav',
                opacity: _opacity,
                audioPlayer: _audioPlayer,
              ),
              const SizedBox(height: 15),
              buildAnimatedContainer(
                entext: "Daughter",
                jptext: "娘",
                picPath: 'assets/images/daughter.png',
                soundPath: 'Family_Sounds/daughter.wav',
                opacity: _opacity,
                audioPlayer: _audioPlayer,
              ),
              const SizedBox(height: 15),
              buildAnimatedContainer(
                entext: "Younger Brohter",
                jptext: "弟",
                picPath: 'assets/images/baby.png',
                soundPath: 'Family_Sounds/younger brohter.wav',
                opacity: _opacity,
                audioPlayer: _audioPlayer,
              ),
              const SizedBox(height: 15),
              buildAnimatedContainer(
                entext: "Younger Sister",
                jptext: "妹",
                picPath: 'assets/images/baby.png',
                soundPath: 'Family_Sounds/younger sister.wav',
                opacity: _opacity,
                audioPlayer: _audioPlayer,
              ),
            ],
          ),
        ));
  }
}
