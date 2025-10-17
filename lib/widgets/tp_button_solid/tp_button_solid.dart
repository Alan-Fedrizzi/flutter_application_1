import 'package:flutter/material.dart';
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
      // funciona.. ver checkbox, está mais elegante..
      /* style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return TpButtonSolidStyle.bgDisabled;
            // return Colors.red;
          }
          if (states.contains(WidgetState.pressed)) {
            return TpButtonSolidStyle.bgActive;
            // return Colors.green;
          }
          if (states.contains(WidgetState.hovered)) {
            return TpButtonSolidStyle.bgHover;
            // return Colors.blue;
          }
          if (states.contains(WidgetState.focused)) {
            return TpButtonSolidStyle.bgFocus;
            // return Colors.yellow;
          }
          return TpButtonSolidStyle.bgDefault;
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return TpButtonSolidStyle.fgDisabled;
            // return Colors.yellow;
          }
          if (states.contains(WidgetState.pressed)) {
            return TpButtonSolidStyle.fgActive;
            // return Colors.red;
          }
          if (states.contains(WidgetState.hovered)) {
            return TpButtonSolidStyle.fgHover;
            // return Colors.green;
          }
          if (states.contains(WidgetState.focused)) {
            return TpButtonSolidStyle.fgFocus;
            // return Colors.blue;
          }
          return TpButtonSolidStyle.fgDefault;
        }),
        overlayColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.pressed)) {
            return TpButtonSolidStyle.ripple;
            // return Colors.blue;
          }
          if (states.contains(WidgetState.hovered)) {
            return TpButtonSolidStyle.ripple;
            // return Colors.green;
          }
          return null; // fallback to default ripple if not set
        }),
      ), */
    );
  }
}
