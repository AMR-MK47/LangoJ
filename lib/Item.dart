import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

Widget buildAnimatedContainer({
  required String entext,
  required String jptext,
  required String soundPath,
  required String picPath,
  required double opacity, // إضافة معامل الـ opacity
  required AudioPlayer audioPlayer, // تمرير مشغل الصوت
}) {
  return AnimatedOpacity(
    opacity: opacity,
    duration: const Duration(seconds: 2),
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 120,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
              image: AssetImage('assets/images/Phrase.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              child: Image(
                image: AssetImage(picPath),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16),
              child: Column(
                children: [
                  Text(
                    entext,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RadioCanadaBig',
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    jptext,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RadioCanadaBig',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: IconButton(
                onPressed: () async {
                  await audioPlayer.stop(); // إيقاف الصوت الحالي قبل تشغيل الصوت الجديد
                  await audioPlayer.play(AssetSource(soundPath));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
Widget buildAnimatedContainerColor({
  required String entext,
  required String jptext,
  required String soundPath,
  required Color color,
  required double opacity, // إضافة معامل الـ opacity
  required AudioPlayer audioPlayer, // تمرير مشغل الصوت
}) {
  return AnimatedOpacity(
    opacity: opacity,
    duration: const Duration(seconds: 2),
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 120,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
              image: AssetImage('assets/images/Phrase.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: color.withOpacity(0.95),
                borderRadius: BorderRadius.circular(15)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16),
              child: Column(
                children: [
                  Text(
                    entext,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RadioCanadaBig',
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    jptext,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RadioCanadaBig',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: IconButton(
                onPressed: () async {
                  await audioPlayer.stop(); // إيقاف الصوت الحالي قبل تشغيل الصوت الجديد
                  await audioPlayer.play(AssetSource(soundPath));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
Widget buildAnimatedContainerPhrase({
  required String entext,
  required String jptext,
  required String path,
  required double opacity, // إضافة معامل الـ opacity
  required AudioPlayer audioPlayer, // تمرير مشغل الصوت
}) {
  return AnimatedOpacity(
    opacity: opacity,
    duration: const Duration(seconds: 2),
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 80,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
              image: AssetImage('assets/images/back.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16),
              child: Column(
                children: [
                  Text(
                    entext,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RadioCanadaBig',
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    jptext,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RadioCanadaBig',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: IconButton(
                onPressed: () async {
                  await audioPlayer.stop(); // إيقاف الصوت الحالي قبل تشغيل الصوت الجديد
                  await audioPlayer.play(AssetSource(path));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
Widget buildAnimatedTune({
  required String path,
  required Color color,
  required double opacity,
}) {
  return AnimatedOpacity(
    opacity: opacity,
    duration: const Duration(seconds: 2),
    child: GestureDetector(
      child: Container(
        color: color,
      ),
      onTap: () async {
        AudioPlayer audioPlayer = AudioPlayer();
        await audioPlayer.play(AssetSource(path));
      },
    ),
  );
}
