import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/meterial.dart';

//display error message to user
void displayMessageToUser(String message, BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(message),
      ),
  );
}
