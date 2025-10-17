import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import 'tp_button_solid_style.dart';

class TpButtonSolid extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool tpDisabled;

  const TpButtonSolid({
    super.key,
    required this.onPressed,
    required this.text,
    this.tpDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: tpDisabled
            ? TpButtonSolidStyle.bgDisabled
            : TpButtonSolidStyle.bgDefault,
        foregroundColor: tpDisabled
            ? TpButtonSolidStyle.fgDisabled
            : TpButtonSolidStyle.fgDefault,
        padding: EdgeInsets.symmetric(
          horizontal: TpButtonSolidStyle.paddingHorizontalMd,
          vertical: TpButtonSolidStyle.paddingVerticalMd,
        ),
        shape: const StadiumBorder(), // automatically pill-shaped
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(
        //     TpButtonSolidStyle.borderRadiusMd,
        //   ),
        // ),
        textStyle: TextStyle(
          fontSize: TpButtonSolidStyle.fontSize,
          fontWeight: TpButtonSolidStyle.fontWeight,
          height: TpButtonSolidStyle.lineHeight,
        ),
      ),
      onPressed: tpDisabled ? null : onPressed,
      child: Text(text),
    );
  }
}
