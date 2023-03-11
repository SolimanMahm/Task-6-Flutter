import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  String image, title, subtitle, trailing;

  CustomListTile(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(trailing),
    );
  }
}
