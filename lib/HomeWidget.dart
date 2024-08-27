import 'package:flutter/material.dart';
import 'package:toku_v_0/ColorsWidget.dart';
import 'package:toku_v_0/FamilyWidget.dart';
import 'package:toku_v_0/NumbersWidget.dart';
import 'package:toku_v_0/PhraseWidget.dart';
import 'package:toku_v_0/TunesWidget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
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
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Home.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8),
                sliver: SliverToBoxAdapter(
                  child: AnimatedOpacity(
                    opacity: _opacity,
                    duration: const Duration(seconds: 2),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xff8B0C63).withOpacity(0.6),
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                      ),
                      child: const Text(
                        "Here you will find some sections that talk about different subjects and some tunes.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'RadioCanadaBig',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ),
                ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                children: [
                  _buildAnimatedButton(
                    "Phrase",
                    const Color(0xffFFDD1F).withOpacity(0.8),
                    const PhraseWidget(),
                  ),
                  _buildAnimatedButton(
                    "Family",
                    const Color(0xff17D1FB).withOpacity(0.8),
                    const FamilyWidget(),
                  ),
                  _buildAnimatedButton(
                    "Numbers",
                    const Color(0xffDC3340).withOpacity(0.8),
                    const NumbersWidget(),
                  ),
                  _buildAnimatedButton(
                    "Colors",
                    const Color(0xffDBFFBA).withOpacity(0.8),
                    const Colorswidget(),
                  ),
                  _buildAnimatedButton(
                    "Tunes",
                    const Color(0xff11181C).withOpacity(0.8),
                    const Tuneswidget(),
                  ),
                  _buildLockedButton(),
                  _buildLockedButton(),
                  _buildLockedButton(),
                  _buildLockedButton(),
                  _buildLockedButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedButton(String text, Color color, Widget destination) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 2),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destination),
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'RadioCanadaBig',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLockedButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 2),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 15,
              right: 15,
              bottom: 15,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/lock.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black26),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                child: const Text(
                  "Soon",
                  style: TextStyle(
                    fontFamily: 'RadioCanadaBig',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
