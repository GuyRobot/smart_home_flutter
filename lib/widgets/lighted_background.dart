import 'package:flutter/material.dart';
import 'package:smart_home/theme/sh_colors.dart';

class LightedBg extends StatelessWidget {
  final Widget child;

  const LightedBg({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const ColoredBox(color: SHColors.backgroundColor),
        Transform.scale(
          alignment: Alignment.center,
          scale: 2,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(1.4)
              ..rotateX(0.1)
              ..setTranslationRaw(90, -80, 0),
            child: const DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(0, -0.55),
                  focal: Alignment.topCenter,
                  colors: SHColors.dimmedLightColors,
                )
              ),
            ),
          ),
        ),
        child
      ],
    );
  }
}
