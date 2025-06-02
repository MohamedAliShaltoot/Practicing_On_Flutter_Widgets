import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void showSnackBar(String message,{ String? actionLabel, VoidCallback? onClick}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
            label: actionLabel ?? '', textColor: Colors.blue,
             onPressed: onClick ?? (){}),
            
      ),
    );
  }
}
