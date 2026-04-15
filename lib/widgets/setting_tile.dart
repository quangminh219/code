import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool) onChanged;
  final IconData icon;

  const SettingTile({
    required this.title,
    required this.value,
    required this.onChanged,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(title),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.pinkAccent,
      ),
    );
  }
}