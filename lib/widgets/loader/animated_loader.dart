// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimatedLoader extends StatefulWidget {
  const AnimatedLoader({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedLoaderState createState() => _AnimatedLoaderState();
}

class _AnimatedLoaderState extends State<AnimatedLoader>
    with TickerProviderStateMixin {
  Color color1 = Colors.deepPurple;
  Color color2 = Colors.black12;
  Color color3 = Colors.black26;
  Color color4 = Colors.black45;
  late AnimationController _rotateCtrl;

  late Animation<double> _rotate;
  late Animation<Offset> _translate1;
  late Animation<Offset> _translate2;

  late Animation<Offset> _translate3;
  late Animation<Offset> _translate4;
  late Animation<Offset> _translate1dot2;
  late Animation<Offset> _translate2dot2;

  late Animation<Offset> _translate3dot2;
  late Animation<Offset> _translate4dot2;
  late Animation<Offset> _translate1dot3;
  late Animation<Offset> _translate2dot3;

  late Animation<Offset> _translate3dot3;
  late Animation<Offset> _translate4dot3;
  late Animation<Offset> _translate1dot4;
  late Animation<Offset> _translate2dot4;
  late Animation<Offset> _translate3dot4;
  late Animation<Offset> _translate4dot4;
  late CurvedAnimation animation1;
  late CurvedAnimation animation2;
  late CurvedAnimation animation3;
  late CurvedAnimation animation4;
  late double offset;

  double size = 46;

  Duration duration = Duration(seconds: 3);

  @override
  void initState() {
    super.initState();
    offset = size * 0.78;

    _rotateCtrl = AnimationController(vsync: this, duration: duration)
      ..addListener(() => setState(() {}))
      ..repeat();

    _rotate = Tween(begin: 0.0, end: 360.0)
        .animate(CurvedAnimation(parent: _rotateCtrl, curve: Curves.linear));

    animation1 = CurvedAnimation(
        parent: _rotateCtrl,
        curve: const Interval(0.0, 0.25, curve: Curves.linear));
    _translate1 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(offset / 2, -offset / 2))
            .animate(animation1);
    _translate1dot2 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(offset / 2, offset / 2))
            .animate(animation1);
    _translate1dot3 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(-offset / 2, offset / 2))
            .animate(animation1);
    _translate1dot4 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(-offset / 2, -offset / 2))
            .animate(animation1);

    animation2 = CurvedAnimation(
        parent: _rotateCtrl,
        curve: const Interval(0.25, 0.5, curve: Curves.linear));
    _translate2 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(offset / 2, offset / 2))
            .animate(animation2);
    _translate2dot2 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(-offset / 2, offset / 2))
            .animate(animation2);
    _translate2dot3 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(-offset / 2, -offset / 2))
            .animate(animation2);

    _translate2dot4 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(offset / 2, -offset / 2))
            .animate(animation2);
    animation3 = CurvedAnimation(
        parent: _rotateCtrl,
        curve: const Interval(0.5, 0.75, curve: Curves.linear));
    _translate3 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(-offset / 2, offset / 2))
            .animate(animation3);
    _translate3dot2 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(-offset / 2, -offset / 2))
            .animate(animation3);
    _translate3dot3 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(offset / 2, -offset / 2))
            .animate(animation3);
    _translate3dot4 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(offset / 2, offset / 2))
            .animate(animation3);

    animation4 = CurvedAnimation(
        parent: _rotateCtrl,
        curve: const Interval(0.75, 1.0, curve: Curves.linear));
    _translate4 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(-offset / 2, -offset / 2))
            .animate(animation4);
    _translate4dot2 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(offset / 2, -offset / 2))
            .animate(animation4);
    _translate4dot3 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(offset / 2, offset / 2))
            .animate(animation4);
    _translate4dot4 =
        Tween(begin: Offset(0.0, 0.0), end: Offset(-offset / 2, offset / 2))
            .animate(animation4);
  }

  @override
  void dispose() {
    _rotateCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: Size.square(size),
        child: Stack(
          children: <Widget>[
            Positioned(top: offset / 2, left: 0, child: _circle(0, color1)),
            Positioned(top: 0.0, left: offset / 2, child: _circle(1, color2)),
            Positioned(
                top: offset / 2, left: offset, child: _circle(2, color3)),
            Positioned(
                top: offset, left: offset / 2, child: _circle(3, color4)),
          ],
        ),
      ),
    );
  }

  Widget _circle(int index, Color color) {
    Matrix4 _tTranslate;

    if (index == 0) {
      _tTranslate = Matrix4.identity()
        ..translate(_translate1.value.dx, _translate1.value.dy, 0.0)
        ..translate(_translate2.value.dx, _translate2.value.dy, 0.0)
        ..translate(_translate3.value.dx, _translate3.value.dy, 0.0)
        ..translate(_translate4.value.dx, _translate4.value.dy, 0.0);
      // ..translate(_translate3.value.dx, _translate3.value.dy, 0.0)
      // ..translate(_translate4.value.dx, _translate4.value.dy, 0.0);

      // ..translate(offset/2,offset/2)
      // ..translate(-offset/2, offset/2)
      // ..translate(-offset/2,-offset/2);

      if (_rotateCtrl.value < 0.25) {
        color1 = Colors.deepPurple;
      } else if ((_rotateCtrl.value > 0.25 && _rotateCtrl.value < 0.50)) {
        color1 = Colors.black12;
      } else if (_rotateCtrl.value > 0.50 && _rotateCtrl.value < 0.75) {
        color1 = Colors.black26;
      } else if (_rotateCtrl.value > 0.75 && _rotateCtrl.value < 1.0) {
        color1 = Colors.black45;
      }
    } else if (index == 1) {
      _tTranslate = Matrix4.identity()
        ..translate(_translate1dot2.value.dx, _translate1dot2.value.dy, 0.0)
        ..translate(_translate2dot2.value.dx, _translate2dot2.value.dy, 0.0)
        ..translate(_translate3dot2.value.dx, _translate3dot2.value.dy, 0.0)
        ..translate(_translate4dot2.value.dx, _translate4dot2.value.dy, 0.0);

      if (_rotateCtrl.value < 0.25) {
        color2 = Colors.black12;
      } else if ((_rotateCtrl.value > 0.25 && _rotateCtrl.value < 0.50)) {
        color2 = Colors.black26;
      } else if (_rotateCtrl.value > 0.50 && _rotateCtrl.value < 0.75) {
        color2 = Colors.black45;
      } else if (_rotateCtrl.value > 0.75 && _rotateCtrl.value < 1.0) {
        color2 = Colors.deepPurple;
      }
    } else if (index == 2) {
      _tTranslate = Matrix4.identity()
        ..translate(_translate1dot3.value.dx, _translate1dot3.value.dy, 0.0)
        ..translate(_translate2dot3.value.dx, _translate2dot3.value.dy, 0.0)
        ..translate(_translate3dot3.value.dx, _translate3dot3.value.dy, 0.0)
        ..translate(_translate4dot3.value.dx, _translate4dot3.value.dy, 0.0);
      // ..translate(_translate4,0.0)
      // ..translate(_translate1,0.0)
      // ..translate(_translate2,0.0);
      // color = Colors.green;

      if (_rotateCtrl.value < 0.25) {
        color3 = Colors.black26;
      } else if ((_rotateCtrl.value > 0.25 && _rotateCtrl.value < 0.50)) {
        color3 = Colors.black45;
      } else if (_rotateCtrl.value > 0.50 && _rotateCtrl.value < 0.75) {
        color3 = Colors.deepPurple;
      } else if (_rotateCtrl.value > 0.75 && _rotateCtrl.value < 1.0) {
        color3 = Colors.black12;
      }
    } else {
      _tTranslate = Matrix4.identity()
        ..translate(_translate1dot4.value.dx, _translate1dot4.value.dy, 0.0)
        ..translate(_translate2dot4.value.dx, _translate2dot4.value.dy, 0.0)
        ..translate(_translate3dot4.value.dx, _translate3dot4.value.dy, 0.0)
        ..translate(_translate4dot4.value.dx, _translate4dot4.value.dy, 0.0);

      if (_rotateCtrl.value < 0.25) {
        color4 = Colors.black45;
      } else if ((_rotateCtrl.value > 0.25 && _rotateCtrl.value < 0.50)) {
        color4 = Colors.deepPurple;
      } else if (_rotateCtrl.value > 0.50 && _rotateCtrl.value < 0.75) {
        color4 = Colors.black12;
      } else if (_rotateCtrl.value > 0.75 && _rotateCtrl.value < 1.0) {
        color4 = Colors.black26;
      }
    }
    return Transform(
      transform: _tTranslate,
      child: SizedBox.fromSize(
        size: Size.square(size * 0.21),
        child: Transform.rotate(
          angle: _rotate.value * 0.0174533,
          child: DecoratedBox(
              decoration: BoxDecoration(shape: BoxShape.circle, color: color)),
        ),
      ),
    );
  }
}
