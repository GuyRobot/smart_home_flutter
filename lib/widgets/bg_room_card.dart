import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home/entities/entities.dart';
import 'package:smart_home/theme/theme.dart';
import 'package:ui_common/ui_common.dart';

import 'blue_light_dot.dart';

class BgRoomCard extends StatelessWidget {
  final SmartRoom room;
  final double translation;

  const BgRoomCard({Key? key, required this.room, required this.translation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(0, 80 * translation, 0),
      child: const DecoratedBox(
        decoration: BoxDecoration(
          color: SHColors.cardColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 12, offset: Offset(-7, 7))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [],
        ),
      ),
    );
  }
}

class _RoomInfoRow extends StatelessWidget {
  final Icon icon;
  final Text label;
  final String? data;

  const _RoomInfoRow(
      {Key? key, required this.icon, required this.label, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        width32,
        IconTheme(data: context.iconTheme.copyWith(size: 18.sp), child: icon),
        width4,
        Expanded(
          child: DefaultTextStyle(
            style: context.bodySmall.copyWith(
                color:
                    data == null ? context.textColor.withOpacity(0.6) : null),
            child: label,
          ),
        ),
        if (data == null)
          Row(
            children: [
              const BlueLightDot(),
              width4,
              Text(
                "OFF",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w800,
                  fontSize: 12.sp,
                  color: SHColors.textColor.withOpacity(.6),
                ),
              ),
            ],
          )
        else
          Text(
            data!,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
            ),
          ),
        width32,
      ],
    );
  }
}
