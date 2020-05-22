import 'package:flutter/material.dart';

inputWithSuffixDecoration({@required label, suffixIcon,}) => InputDecoration(
      labelText: label,
      fillColor: Colors.white,
      suffixIcon: suffixIcon,
      border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(18.0),
          borderSide: new BorderSide(),));