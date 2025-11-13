import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/app_constants.dart';

PreferredSizeWidget posAppBar({String title="Mobile POS", List<Widget>? actions}){
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    title: Text(
      title,
      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)
    ),
    backgroundColor: appPrimaryColor,
    actions: actions,
  );
}