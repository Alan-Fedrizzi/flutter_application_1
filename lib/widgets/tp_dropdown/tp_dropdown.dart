import 'package:flutter/material.dart';
import 'dart:collection';

import '../../theme/colors.dart';

typedef OptionEntry = DropdownMenuEntry<OptionLabel>;

// DropdownMenuEntry labels and values for the first dropdown menu.
enum OptionLabel {
  blue('blue', 'Blue'),
  pink('pink', 'Pink'),
  green('green', 'Green'),
  yellow('orange', 'Orange'),
  grey('grey', 'Grey');

  const OptionLabel(this.value, this.label);
  final String value;
  final String label;

  static final List<OptionEntry> entries = UnmodifiableListView<OptionEntry>(
    values.map<OptionEntry>(
      (OptionLabel option) => OptionEntry(value: option, label: option.label),
    ),
  );
}

class TpDropdown<T> extends StatefulWidget {
  final String label;
  final List<DropdownMenuEntry<T>> options;
  final T? initialValue;
  final ValueChanged<T?>? onChanged;

  const TpDropdown({
    super.key,
    required this.label,
    required this.options,
    this.initialValue,
    this.onChanged,
  });

  @override
  State<TpDropdown<T>> createState() => _TpDropdownState<T>();
}

class _TpDropdownState<T> extends State<TpDropdown<T>> {
  late TextEditingController controller;
  T? selectedValue;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<T>(
      controller: controller,
      initialSelection: widget.initialValue,
      requestFocusOnTap: true,
      enableFilter: true,
      expandedInsets: EdgeInsets.zero,
      // label: Text(widget.label),
      label: Text(
        widget.label,
        style: TextStyle(
          color: TpColors.neutralSolid90,
          fontWeight: FontWeight.bold,
        ),
      ),
      textStyle: TextStyle(fontSize: 16, color: TpColors.neutralSolid90),
      // menuStyle: MenuStyle(
      //   backgroundColor: WidgetStateProperty.all(TpColors.neutralSolid20),
      //   elevation: WidgetStateProperty.all(4),
      //   shape: WidgetStateProperty.all(
      //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      //   ),
      //   padding: WidgetStateProperty.all(
      //     const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      //   ),
      // ),
      onSelected: (T? value) {
        setState(() {
          selectedValue = value;
        });
        widget.onChanged?.call(value);
      },
      dropdownMenuEntries: widget.options,
    );
  }
}
