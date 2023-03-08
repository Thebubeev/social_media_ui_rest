import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_rest/config/theme_provider.dart';

class ChangeThemeidget extends StatelessWidget {
  const ChangeThemeidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
