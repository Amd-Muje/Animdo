import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double _buttonRadius = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [_pageBackground(), _circularAnimationButton()],
        ),
      ),
    );
  }

  Widget _pageBackground() {
    return Container(color: Colors.blue);
  }

  Widget _circularAnimationButton() {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _buttonRadius += _buttonRadius == 200 ? -100 : 100;
          });
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          curve: Curves.bounceInOut,
          height: _buttonRadius,
          width: _buttonRadius,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(_buttonRadius),
          ),
          child: const Center(
            child: Text(
              "Click Me",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
