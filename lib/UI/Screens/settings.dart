import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/constants/color.dart';
import 'package:news/cubit/cubit/theme_cubit.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool themeChange = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(children: [
        SwitchListTile(
          title: const Text('Change Theme',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          value: themeChange,
          onChanged: (bool value) {
            context.read<ThemeCubit>().toggleTheme();
            setState(() {});
            themeChange = !themeChange;
          },
          activeColor: kColor4,
          activeTrackColor: kColor3,
          inactiveTrackColor: Colors.grey[300],
          secondary: Icon(
            themeChange
                ? Icons.brightness_2_outlined
                : Icons.brightness_2_sharp,
            size: 30,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          thickness: 1,
          indent: 25,
          endIndent: 25,
        ),
      ]),
    );
  }
}
