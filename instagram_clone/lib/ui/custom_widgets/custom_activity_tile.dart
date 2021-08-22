import 'package:flutter/material.dart';

Widget customActivityTile(
        {dynamic imgPath, dynamic title, dynamic subtitle, dynamic trailing}) =>
    ListTile(
      leading: Container(
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          border: Border.all(
            width: 4,
            color: Colors.white,
            style: BorderStyle.solid,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: Image.asset(
            imgPath,
          ),
        ),
      ),
      title: title,
      subtitle: subtitle,
      trailing: trailing,
    );
