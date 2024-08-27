import 'package:flutter/material.dart';

import 'Item.dart';

class Tuneswidget extends StatefulWidget {
  const Tuneswidget({super.key});

  @override
  State<Tuneswidget> createState() => _TuneswidgetState();
}

class _TuneswidgetState extends State<Tuneswidget> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  void dispose() {
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
          ),
        ),
        title: const Text(
          "Tunes",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'RadioCanadaBig',
          ),
        ),
        backgroundColor: Colors.black.withOpacity(1),
        elevation: 500,
      ),
      body: Column(
        children: [
          Expanded(
            child: buildAnimatedTune(
              opacity: _opacity,
              path: 'Tunes/note1.wav',
              color: const Color(0xff4C4E8A),
            ),
          ),
          Expanded(
            child: buildAnimatedTune(
              opacity: _opacity,
              path: 'Tunes/note2.wav',
              color: const Color(0xff414376),
            ),
          ),
          Expanded(
            child: buildAnimatedTune(
              opacity: _opacity,
              path: 'Tunes/note3.wav',
              color: const Color(0xff363862),
            ),
          ),
          Expanded(
            child: buildAnimatedTune(
              opacity: _opacity,
              path: 'Tunes/note4.wav',
              color: const Color(0xff2b2d4e),
            ),
          ),
          Expanded(
            child: buildAnimatedTune(
              opacity: _opacity,
              path: 'Tunes/note5.wav',
              color: const Color(0xff20223a),
            ),
          ),
          Expanded(
            child: buildAnimatedTune(
              opacity: _opacity,
              path: 'Tunes/note6.wav',
              color: const Color(0xff151726),
            ),
          ),
          Expanded(
            child: buildAnimatedTune(
              opacity: _opacity,
              path: 'Tunes/note7.wav',
              color: const Color(0xff0a0c12),
            ),
          ),
        ],
      ),
    );
  }
}

