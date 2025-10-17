import 'package:flutter/material.dart';

import '../tp_button_solid/tp_button_solid.dart';

class AdaptiveBottomSheet extends StatelessWidget {
  final String title;
  final Widget content;
  final String cancelText;
  final String confirmText;
  final VoidCallback? onCancel;
  final VoidCallback? onConfirm;
  final double maxHeightFactor; // e.g., 0.7 for 70% of viewport
  final Color? backgroundColor;

  const AdaptiveBottomSheet({
    super.key,
    required this.title,
    required this.content,
    this.cancelText = "Cancel",
    this.confirmText = "Confirm",
    this.onCancel,
    this.onConfirm,
    this.maxHeightFactor = 0.7,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * maxHeightFactor;

    return SizedBox(
      height: height,
      child: Column(
        children: [
          // ===== HEADER =====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title, // ✅ use the passed title
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          const Divider(height: 1),

          // ===== SCROLLABLE CONTENT =====
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: content, // ✅ use the passed content
            ),
          ),

          // ===== FOOTER =====
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TpButtonSolid(
                    onPressed: () => Navigator.pop(context),
                    text: cancelText,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TpButtonSolid(
                    onPressed: () {
                      // Perform action
                      Navigator.pop(context);
                    },
                    text: confirmText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
