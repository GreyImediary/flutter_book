import 'package:flutter/material.dart';

Widget buildCodeExample(BuildContext context, String codeText) {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Container(
      width: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorLight,
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(16),
      child: Text(
        codeText,
        textAlign: TextAlign.start,
      ),
    ),
  );
}