import 'dart:ui';

import 'package:flutter_application_1/theme/colors.dart';

class TpButtonSolidStyle {
  static const double paddingHorizontalMd = 32;
  static const double paddingVerticalMd = 16;
  static const double borderRadiusMd = 9999;
  static const double fontSize = 16;
  static const double lineHeight = 1.5;

  static final Color bgDefault = TpColors.primaryDefault;
  static final Color bgDisabled = TpColors.neutralStrong30;
  static final Color bgHover = TpColors.primaryHard;
  static final Color bgFocus = TpColors.primaryHard;
  static final Color bgActive = TpColors.primaryHard;
  static final Color fgDefault = TpColors.neutralSolid10;
  static final Color fgDisabled = TpColors.neutralStrong100;
  static final Color fgHover = TpColors.neutralSolid10;
  static final Color fgFocus = TpColors.neutralSolid10;
  static final Color fgActive = TpColors.neutralSolid10;
  static final Color ripple = TpColors.neutralWeak100;
  static final FontWeight fontWeight = FontWeight.w600;
}
