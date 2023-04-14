import 'package:flutter/material.dart';

const Color nPrimaryColor = Color(0xFF00c6fb);
const Color nSecondaryColor = Color(0xFF005bea);
const Color nThirdColor = Color(0xFF43e97b);
const Color nFourthColor = Color(0xFF38f9d7);
Color glassColor = const Color(0xFFCBEFEC).withOpacity(0.4);

Gradient blueGradient() {
  return const LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      colors: [Color(0xFF005BEA), Color(0xFF00C6FB)]);
}

Gradient greenGradient() {
  return const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Color(0xFF43E97B),Color(0xFF50C7FE)]);
}
