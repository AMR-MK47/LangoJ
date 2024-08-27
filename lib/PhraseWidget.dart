import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_v_0/Item.dart';
class PhraseWidget extends StatefulWidget {
  const PhraseWidget({super.key});

  @override
  State<PhraseWidget> createState() => _PhraseWidgetState();
}

class _PhraseWidgetState extends State<PhraseWidget> {
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
        title: const Text("Phrases",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'RadioCanadaBig',
        ),),
        backgroundColor: Colors.black.withOpacity(1),
        elevation: 500,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Phrase.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 20, right: 8, left: 8),
                children: [
                  buildAnimatedContainerPhrase(
                      entext: "Are you Coming?",
                      jptext: "来ますか？",
                      path: 'sounds/are_you_coming.wav',
                    opacity: _opacity, // تمرير قيمة الـ opacity
                    audioPlayer: _audioPlayer,),
                  const SizedBox(height: 15),
                  buildAnimatedContainerPhrase(
                      entext: "Don't Forget To Subscribe",
                      jptext: "購読をお忘れなく",
                      path: 'sounds/dont_forget_to_subscribe.wav',
                    opacity: _opacity, // تمرير قيمة الـ opacity
                    audioPlayer: _audioPlayer,),
                  const SizedBox(height: 15),
                  buildAnimatedContainerPhrase(
                      entext: "How Are You Feeling?",
                      jptext: "ご気分はいかがですか？",
                      path: 'sounds/how_are_you_feeling.wav',
                    opacity: _opacity, // تمرير قيمة الـ opacity
                    audioPlayer: _audioPlayer),
                  const SizedBox(height: 15),
                  buildAnimatedContainerPhrase(
                      entext: "I Love Anime",
                      jptext: "アニメが大好き",
                      path: 'sounds/i_love_anime.wav',
                    opacity: _opacity, // تمرير قيمة الـ opacity
                    audioPlayer: _audioPlayer,),
                  const SizedBox(height: 15),
                  buildAnimatedContainerPhrase(
                      entext: "I Love Programming",
                      jptext: "プログラミングが大好き",
                      path: 'sounds/i_love_programming.wav',
                    opacity: _opacity, // تمرير قيمة الـ opacity
                    audioPlayer: _audioPlayer,),
                  const SizedBox(height: 15),
                  buildAnimatedContainerPhrase(
                      entext: "Programming is Easy",
                      jptext: "プログラミングは簡単",
                      path: 'sounds/programming_is_easy.wav',
                    opacity: _opacity, // تمرير قيمة الـ opacity
                    audioPlayer: _audioPlayer,),
                  const SizedBox(height: 15),
                  buildAnimatedContainerPhrase(
                      entext: "What Is Your Name?",
                      jptext: "あなたの名前は何ですか？",
                      path: 'sounds/what_is_your_name.wav',
                    opacity: _opacity, // تمرير قيمة الـ opacity
                    audioPlayer: _audioPlayer,),
                  const SizedBox(height: 15),
                  buildAnimatedContainerPhrase(
                      entext: "Where Are You Going?",
                      jptext: "どこに行くの？",
                      path: 'sounds/where_are_you_going.wav',
                    opacity: _opacity, // تمرير قيمة الـ opacity
                    audioPlayer: _audioPlayer,),
                  const SizedBox(height: 15),
                  buildAnimatedContainerPhrase(
                      entext: "Yes Im Coming",
                      jptext: "はい、行きます",
                      path: 'sounds/yes_im_coming.wav',
                    opacity: _opacity, // تمرير قيمة الـ opacity
                    audioPlayer: _audioPlayer,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}