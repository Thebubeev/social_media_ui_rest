import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_rest/config/theme_provider.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Center(
      child: CircularProgressIndicator(
        color: themeProvider.isDarkMode ? Colors.white : Colors.black,
      ),
    );
  }
}
