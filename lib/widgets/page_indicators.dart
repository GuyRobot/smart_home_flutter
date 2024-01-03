import 'package:flutter/material.dart';
import 'package:smart_home/theme/theme.dart';

class PageIndicators extends StatelessWidget {
  final int length;
  final int index;

  const PageIndicators({Key? key, required this.length, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 12; i++) ...[
                const _Dot(),
                if (i < length)
                  const SizedBox(
                    width: 16,
                  )
              ],
            ],
          ),
          Positioned(
            left: (16.0 * index) + (6 * index),
            child: const _BorderDot(),
          ),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 6,
      height: 6,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: SHColors.hintColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class _BorderDot extends StatelessWidget {
  const _BorderDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 12,
      height: 12,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange, width: 2),
          color: SHColors.backgroundColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
