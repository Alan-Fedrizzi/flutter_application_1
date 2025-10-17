import 'package:flutter/material.dart';

Color hslaToColor(double h, double s, double l, double a) {
  s /= 100;
  l /= 100;

  final c = (1 - (2 * l - 1).abs()) * s;
  final x = c * (1 - (((h / 60) % 2) - 1).abs());
  final m = l - c / 2;

  double r = 0, g = 0, b = 0;

  if (h < 60) {
    r = c;
    g = x;
    b = 0;
  } else if (h < 120) {
    r = x;
    g = c;
    b = 0;
  } else if (h < 180) {
    r = 0;
    g = c;
    b = x;
  } else if (h < 240) {
    r = 0;
    g = x;
    b = c;
  } else if (h < 300) {
    r = x;
    g = 0;
    b = c;
  } else {
    r = c;
    g = 0;
    b = x;
  }

  return Color.fromRGBO(
    ((r + m) * 255).round(),
    ((g + m) * 255).round(),
    ((b + m) * 255).round(),
    a,
  );
}
