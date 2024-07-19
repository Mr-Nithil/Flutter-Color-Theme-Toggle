import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_app/components/box.dart';
import 'package:theme_app/components/button.dart';
import 'package:theme_app/theme/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: MyBox(
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ), 
          color: Theme.of(context).colorScheme.primary
        )
      ),
    );
  }
}