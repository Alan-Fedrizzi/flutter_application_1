import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';

class TpCheckbox extends StatefulWidget {
  final bool tpDisabled;
  final bool? initialValue;

  const TpCheckbox({
    super.key,
    this.tpDisabled = false,
    this.initialValue = false,
  });

  @override
  State<TpCheckbox> createState() => _TpCheckboxState();
}

// export const tpCheckboxCheckedBgDefault = "hsla( 28, 32%, 49%, 1)"; tpColorPrimaryDefault
// export const tpCheckboxCheckedBgHover = "hsla( 28, 30%, 54%, 1)"; tpColorPrimaryHarder
// export const tpCheckboxCheckedBgDisabled = "hsla( 28, 32%, 49%, 0.5)"; tpColorPrimaryStrong
// export const tpCheckboxCheckedFgDefault = "hsla( 188, 10%, 8%, 1)"; tpColorNeutralSolid10
// export const tpCheckboxCheckedFgHover = "hsla( 188, 10%, 8%, 1)"; tpColorNeutralSolid10
// export const tpCheckboxCheckedFgDisabled = "hsla( 188, 10%, 8%, 0.5)"; tpColorNeutralStrong10
// export const tpCheckboxCheckedBorderColorDefault = "hsla( 28, 32%, 49%, 1)"; tpColorPrimaryDefault
// export const tpCheckboxCheckedBorderColorHover = "hsla( 28, 30%, 54%, 1)"; tpColorPrimaryHarder
// export const tpCheckboxCheckedBorderColorDisabled = "hsla( 28, 32%, 49%, 0.5)"; tpColorPrimaryStrong

class _TpCheckboxState extends State<TpCheckbox> {
  bool? isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<WidgetState> states) {
      const Set<WidgetState> interactiveStates = <WidgetState>{
        WidgetState.pressed,
        WidgetState.hovered,
        WidgetState.focused,
      };

      if (widget.tpDisabled) {
        return TpColors.primaryStrong;
        // return Colors.red;
      }

      if (isChecked == true) {
        // Selected / checked state color
        return TpColors.primaryDefault;
        // return Colors.blue;
      }

      if (states.any(interactiveStates.contains)) {
        return TpColors.primaryHarder;
        // return Colors.green;
      }

      return Colors.transparent;
    }

    var checked = isChecked ?? false;

    return Checkbox(
      tristate: true,
      // overlayColor: WidgetStateProperty.all(Colors.blue),
      // hoverColor: Colors.red,
      // focusColor: Colors.green,
      splashRadius: 20,
      // shape: CircleBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // Rounded corners
      ),
      // border
      // default tpColorPrimaryDefault
      // hover tpColorPrimaryHarder
      // disabled tpColorPrimaryStrong
      // side: BorderSide(width: 2, color: Colors.red),
      side: checked
          ? BorderSide(
              width: 2,
              color: TpColors.primaryHarder,
              // color: Colors.red,
            )
          : WidgetStateBorderSide.fromMap(<WidgetStatesConstraint, BorderSide?>{
              // WidgetState.selected: BorderSide(
              //   width: 2,
              //   // color: TpColors.primaryHarder,
              //   color: Colors.purple,
              // ),
              WidgetState.hovered: BorderSide(
                width: 2,
                color: TpColors.primaryHarder,
                // color: Colors.yellow,
              ),
              WidgetState.focused: BorderSide(
                width: 2,
                color: TpColors.primaryHarder,
                // color: Colors.blue,
              ),
              WidgetState.pressed: BorderSide(
                width: 2,
                color: TpColors.primaryHarder,
                // color: Colors.red,
              ),
              WidgetState.disabled: BorderSide(
                width: 2,
                color: TpColors.primaryStrong,
                // color: Colors.green,
              ),
            }),
      checkColor: widget.tpDisabled
          ? TpColors.neutralStrong10
          : TpColors.neutralSolid10,
      fillColor: WidgetStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: widget.tpDisabled
          ? null
          : (bool? value) {
              setState(() {
                isChecked = value;
                // isChecked = value!;
              });
            },
    );
  }
}
