import 'package:flutter/material.dart';
import 'HomeWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr, // إضافة Directionality هنا
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeWidget(),
      ),
    );
  }
}

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({super.key});

  @override
  State<WelcomeWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff23232C),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 70),
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment.topLeft,
                  child: MyAnimation(
                    color: Colors.white,
                    opacity: _opacity,
                    size: 30,
                    text: "LangoJ.",
                    duration: 2,
                  ),
                ),
              ),
              const Spacer(flex: 1),
              MyAnimation(
                size: 45,
                text: "Welcome to our App",
                opacity: _opacity,
                color: Colors.white,
                duration: 2,
              ),
              MyAnimation(
                size: 15,
                text: "Hi there, this app is for learning some Japanese",
                opacity: _opacity,
                color: Colors.white70,
                duration: 2,
              ),
              const SizedBox(height: 50),
              AnimatedOpacity(
                opacity: _opacity,
                duration: const Duration(seconds: 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeWidget()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff45515F)),
                    fixedSize: MaterialStateProperty.all(const Size(250, 60)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Let's Start",
                    style: TextStyle(
                      fontFamily: 'RadioCanadaBig',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

class MyAnimation extends StatefulWidget {
  const MyAnimation({
    super.key,
    required this.size,
    required this.text,
    required this.opacity,
    required this.color,
    required this.duration,
  });

  final String text;
  final Color color;
  final double size;
  final double opacity;
  final int duration;

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.opacity,
      duration: Duration(seconds: widget.duration),
      child: Text(
        widget.text,
        style: TextStyle(
          fontFamily: 'RadioCanadaBig',
          fontSize: widget.size,
          fontWeight: FontWeight.bold,
          color: widget.color,
        ),
      ),
    );
  }
}