import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_v_0/Item.dart';

class NumbersWidget extends StatefulWidget {
  const NumbersWidget({super.key});

  @override
  State<NumbersWidget> createState() => _NumbersWidgetState();
}

class _NumbersWidgetState extends State<NumbersWidget> {
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
        title: const Text("Numbers",
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
      buildAnimatedContainer(
        entext: "One",
        jptext: "1つ",
        picPath: 'assets/Numbers_Pic/one.png',
        soundPath: 'numbers/number_one_sound.wav',
        opacity: _opacity, // تمرير قيمة الـ opacity
        audioPlayer: _audioPlayer, // تمرير مشغل الصوت
      ),
      const SizedBox(height: 15),
      buildAnimatedContainer(
        entext: "Two",
        jptext: "二",
        picPath: 'assets/Numbers_Pic/two.png',
        soundPath: 'numbers/number_two_sound.wav',
        opacity: _opacity, // تمرير قيمة الـ opacity
        audioPlayer: _audioPlayer, // تمرير مشغل الصوت
      ),
      const SizedBox(height: 15),
      buildAnimatedContainer(
        entext: "Three",
        jptext: "三つ",
        picPath: 'assets/Numbers_Pic/three.png',
        soundPath: 'numbers/number_three_sound.wav',
        opacity: _opacity, // تمرير قيمة الـ opacity
        audioPlayer: _audioPlayer, // تمرير مشغل الصوت
      ),
      const SizedBox(height: 15),
      buildAnimatedContainer(
        entext: "Four",
        jptext: "4つ",
        picPath: 'assets/Numbers_Pic/four.png',
        soundPath: 'numbers/number_four_sound.wav',
        opacity: _opacity, // تمرير قيمة الـ opacity
        audioPlayer: _audioPlayer, // تمرير مشغل الصوت
      ),
      const SizedBox(height: 15),
      buildAnimatedContainer(
        entext: "Five",
        jptext: "五",
        picPath: 'assets/Numbers_Pic/five.png',
        soundPath: 'numbers/number_five_sound.wav',
        opacity: _opacity, // تمرير قيمة الـ opacity
        audioPlayer: _audioPlayer, // تمرير مشغل الصوت
      ),
      const SizedBox(height: 15),
      buildAnimatedContainer(
        entext: "Six",
        jptext: "六",
        picPath: 'assets/Numbers_Pic/six.png',
        soundPath: 'numbers/number_six_sound.wav',
        opacity: _opacity, // تمرير قيمة الـ opacity
        audioPlayer: _audioPlayer, // تمرير مشغل الصوت
      ),
      const SizedBox(height: 15),
      buildAnimatedContainer(
        entext: "Seven",
        jptext: "セブン",
        picPath: 'assets/Numbers_Pic/seven.png',
        soundPath: 'numbers/number_seven_sound.wav',
        opacity: _opacity, // تمرير قيمة الـ opacity
        audioPlayer: _audioPlayer, // تمرير مشغل الصوت
      ),
      const SizedBox(height: 15),
      buildAnimatedContainer(
        entext: "Eight",
        jptext: "八",
        picPath: 'assets/Numbers_Pic/eight.png',
        soundPath: 'numbers/number_eight_sound.wav',
        opacity: _opacity, // تمرير قيمة الـ opacity
        audioPlayer: _audioPlayer, // تمرير مشغل الصوت
      ),
      const SizedBox(height: 15),
      buildAnimatedContainer(
        entext: "Nine",
        jptext: "九",
        picPath: 'assets/Numbers_Pic/nine.png',
        soundPath: 'numbers/number_nine_sound.wav',
        opacity: _opacity, // تمرير قيمة الـ opacity
        audioPlayer: _audioPlayer, // تمرير مشغل الصوت
      ),
      const SizedBox(height: 15),
      buildAnimatedContainer(
        entext: "Ten",
        jptext: "10 10",
        picPath: 'assets/Numbers_Pic/ten.png',
        soundPath: 'numbers/number_ten_sound.wav',
        opacity: _opacity, // تمرير قيمة الـ opacity
        audioPlayer: _audioPlayer, // تمرير مشغل الصوت
      ),
    ],
    )
    )
    );
  }
}
