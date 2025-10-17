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

      if (states.any(interactiveStates.contains)) {
        return TpColors.primaryHarder;
        // return Colors.green;
      }

      switch (isChecked) {
        case true:
        case null:
          return TpColors.primaryDefault;
        case false:
          return Colors.transparent;
      }
      // if (isChecked == true) {
      //   // Selected / checked state color
      //   return TpColors.primaryDefault;
      //   // return Colors.blue;
      // } else if (mounted) {

      // }

      // // return TpColors.primaryDefault;
      // return Colors.transparent;
    }

    // var checked = isChecked ?? false;

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
      side: BorderSide(width: 2, color: TpColors.neutralSolid10),
      // side: checked
      //     ? BorderSide(
      //         width: 2,
      //         color: TpColors.primaryHarder,
      //         // color: Colors.red,
      //       )
      //     : WidgetStateBorderSide.fromMap(<WidgetStatesConstraint, BorderSide?>{
      //         WidgetState.selected: BorderSide(
      //           width: 2,
      //           color: TpColors.primaryHarder,
      //           // color: Colors.purple,
      //         ),
      //         WidgetState.hovered: BorderSide(
      //           width: 2,
      //           color: TpColors.primaryHarder,
      //           // color: Colors.yellow,
      //         ),
      //         WidgetState.focused: BorderSide(
      //           width: 2,
      //           color: TpColors.primaryHarder,
      //           // color: Colors.blue,
      //         ),
      //         WidgetState.pressed: BorderSide(
      //           width: 2,
      //           color: TpColors.primaryHarder,
      //           // color: Colors.red,
      //         ),
      //         WidgetState.disabled: BorderSide(
      //           width: 2,
      //           color: TpColors.primaryStrong,
      //           // color: Colors.green,
      //         ),
      //       }),
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
